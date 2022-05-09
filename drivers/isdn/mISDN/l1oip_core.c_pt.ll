; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/l1oip_core.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/l1oip_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.l1oip = type { %struct.list_head, i32, [20 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, %struct.timer_list, i32, %struct.work_struct, ptr, %struct.completion, ptr, %struct.spinlock, i32, i16, i16, %struct.sockaddr_in, %struct.sockaddr_in, %struct.msghdr, %struct.kvec, [128 x %struct.l1oip_chan] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.l1oip_chan = type { ptr, ptr, i32, i32, i32 }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_author457 = internal constant [31 x i8] c"l1oip.author=Andreas Eversberg\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [36 x i8] c"l1oip.file=drivers/isdn/mISDN/l1oip\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [18 x i8] c"l1oip.license=GPL\00", section ".modinfo", align 1
@__param_str_type = internal constant [11 x i8] c"l1oip.type\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_type = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @type }, align 4
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_type } }, section "__param", align 4
@__UNIQUE_ID_typetype460 = internal constant [34 x i8] c"l1oip.parmtype=type:array of uint\00", section ".modinfo", align 1
@__param_str_codec = internal constant [12 x i8] c"l1oip.codec\00", align 1
@__param_arr_codec = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @codec }, align 4
@__param_codec = internal constant %struct.kernel_param { ptr @__param_str_codec, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_codec } }, section "__param", align 4
@__UNIQUE_ID_codectype461 = internal constant [35 x i8] c"l1oip.parmtype=codec:array of uint\00", section ".modinfo", align 1
@__param_str_ip = internal constant [9 x i8] c"l1oip.ip\00", align 1
@__param_arr_ip = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_uint, ptr @ip }, align 4
@__param_ip = internal constant %struct.kernel_param { ptr @__param_str_ip, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_ip } }, section "__param", align 4
@__UNIQUE_ID_iptype462 = internal constant [32 x i8] c"l1oip.parmtype=ip:array of uint\00", section ".modinfo", align 1
@__param_str_port = internal constant [11 x i8] c"l1oip.port\00", align 1
@__param_arr_port = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @port }, align 4
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_port } }, section "__param", align 4
@__UNIQUE_ID_porttype463 = internal constant [34 x i8] c"l1oip.parmtype=port:array of uint\00", section ".modinfo", align 1
@__param_str_remoteport = internal constant [17 x i8] c"l1oip.remoteport\00", align 1
@__param_arr_remoteport = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @remoteport }, align 4
@__param_remoteport = internal constant %struct.kernel_param { ptr @__param_str_remoteport, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_remoteport } }, section "__param", align 4
@__UNIQUE_ID_remoteporttype464 = internal constant [40 x i8] c"l1oip.parmtype=remoteport:array of uint\00", section ".modinfo", align 1
@__param_str_ondemand = internal constant [15 x i8] c"l1oip.ondemand\00", align 1
@__param_arr_ondemand = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @ondemand }, align 4
@__param_ondemand = internal constant %struct.kernel_param { ptr @__param_str_ondemand, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_ondemand } }, section "__param", align 4
@__UNIQUE_ID_ondemandtype465 = internal constant [38 x i8] c"l1oip.parmtype=ondemand:array of uint\00", section ".modinfo", align 1
@__param_str_limit = internal constant [12 x i8] c"l1oip.limit\00", align 1
@__param_arr_limit = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @limit }, align 4
@__param_limit = internal constant %struct.kernel_param { ptr @__param_str_limit, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_limit } }, section "__param", align 4
@__UNIQUE_ID_limittype466 = internal constant [35 x i8] c"l1oip.parmtype=limit:array of uint\00", section ".modinfo", align 1
@__param_str_id = internal constant [9 x i8] c"l1oip.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_uint, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype467 = internal constant [32 x i8] c"l1oip.parmtype=id:array of uint\00", section ".modinfo", align 1
@__param_str_ulaw = internal constant [11 x i8] c"l1oip.ulaw\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ulaw = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ulaw = internal constant %struct.kernel_param { ptr @__param_str_ulaw, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @ulaw } }, section "__param", align 4
@__UNIQUE_ID_ulawtype468 = internal constant [25 x i8] c"l1oip.parmtype=ulaw:uint\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"l1oip.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype469 = internal constant [26 x i8] c"l1oip.parmtype=debug:uint\00", section ".modinfo", align 1
@__initcall__kmod_l1oip__470_1502_l1oip_init6 = internal global ptr @l1oip_init, section ".initcall6.init", align 4
@__exitcall_l1oip_cleanup = internal global ptr @l1oip_cleanup, section ".exitcall.exit", align 4
@type = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@codec = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@ip = internal global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@port = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@remoteport = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@ondemand = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@limit = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@id = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@l1oip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016mISDN: Layer-1-over-IP driver Rev. %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l1oip_init\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/isdn/mISDN/l1oip_core.c\00", [32 x i8] zeroinitializer }, align 32
@l1oip_init._entry_ptr = internal global ptr @l1oip_init._entry, section ".printk_index", align 4
@l1oip_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@l1oip_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Card type(%d) not supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@l1oip_init._entry_ptr.5 = internal global ptr @l1oip_init._entry.3, section ".printk_index", align 4
@l1oip_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: interface %d is %s with %s.\0A\00", [61 x i8] zeroinitializer }, align 32
@l1oip_init._entry_ptr.8 = internal global ptr @l1oip_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PRI\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BRI\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bundled IP packet for all B-channels\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"separate IP packets for every B-channel\00", [56 x i8] zeroinitializer }, align 32
@l1oip_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013No kmem for L1-over-IP driver.\0A\00", [62 x i8] zeroinitializer }, align 32
@l1oip_init._entry_ptr.15 = internal global ptr @l1oip_init._entry.13, section ".printk_index", align 4
@l1oip_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&hc->workq)\00", [34 x i8] zeroinitializer }, align 32
@l1oip_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@l1oip_ilist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @l1oip_ilist, ptr @l1oip_ilist }, [24 x i8] zeroinitializer }, align 32
@l1oip_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%d virtual devices registered\0A\00", [63 x i8] zeroinitializer }, align 32
@l1oip_init._entry_ptr.19 = internal global ptr @l1oip_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.00\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@l1oip_send_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: keepalive timer expired, sending empty frame on dchannel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l1oip_send_bh\00", [18 x i8] zeroinitializer }, align 32
@l1oip_send_bh._entry_ptr = internal global ptr @l1oip_send_bh._entry, section ".printk_index", align 4
@l1oip_socket_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: sending data to socket (len = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l1oip_socket_send\00", [46 x i8] zeroinitializer }, align 32
@l1oip_socket_send._entry_ptr = internal global ptr @l1oip_socket_send._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@l1oip_socket_send._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: resetting timer\0A\00", [41 x i8] zeroinitializer }, align 32
@l1oip_socket_send._entry_ptr.27 = internal global ptr @l1oip_socket_send._entry.25, section ".printk_index", align 4
@l1oip_socket_send._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: dropping frame, because remote IP is not set.\0A\00", [43 x i8] zeroinitializer }, align 32
@l1oip_socket_send._entry_ptr.30 = internal global ptr @l1oip_socket_send._entry.28, section ".printk_index", align 4
@l1oip_socket_send._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: sending packet to socket (len = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@l1oip_socket_send._entry_ptr.33 = internal global ptr @l1oip_socket_send._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l1oip_lock\00", [21 x i8] zeroinitializer }, align 32
@init_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hc->socket_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l1oip-e1.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l1oip-s0.%d\00", [20 x i8] zeroinitializer }, align 32
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Codec(%d) not supported.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 1317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: using codec %d\0A\00", [42 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.42 = internal global ptr @init_card._entry.40, section ".printk_index", align 4
@init_card._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\014Warning: No 'id' value given or 0, this is highly unsecure. Please use 32 bit random number 0x...\0A\00", [59 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.45 = internal global ptr @init_card._entry.43, section ".printk_index", align 4
@init_card._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: using id 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.48 = internal global ptr @init_card._entry.46, section ".printk_index", align 4
@init_card._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: ondemand option only allowed in conjunction with non 0 ID\0A\00", [63 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.51 = internal global ptr @init_card._entry.49, section ".printk_index", align 4
@init_card._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Maximum limit for BRI interface is 2 channels.\0A\00", [46 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.54 = internal global ptr @init_card._entry.52, section ".printk_index", align 4
@init_card._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Maximum limit for PRI interface is 126 channels.\0A\00", [44 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.57 = internal global ptr @init_card._entry.55, section ".printk_index", align 4
@init_card._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.39, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014Maximum limit for BRI interface is 30 channels.\0A\00", [45 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.60 = internal global ptr @init_card._entry.58, section ".printk_index", align 4
@init_card._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.39, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014Your selection of %d channels must be supported by application.\0A\00", [61 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.63 = internal global ptr @init_card._entry.61, section ".printk_index", align 4
@init_card._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.39, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: using local port %d remote ip %d.%d.%d.%d port %d ondemand %d\0A\00", [59 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.66 = internal global ptr @init_card._entry.64, section ".printk_index", align 4
@init_card._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.39, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: no memory for bchannel\0A\00", [34 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.69 = internal global ptr @init_card._entry.67, section ".printk_index", align 4
@init_card._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.39, ptr @.str.2, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Setting up network card(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.72 = internal global ptr @init_card._entry.70, section ".printk_index", align 4
@init_card.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&hc->keep_tl)\00", [17 x i8] zeroinitializer }, align 32
@init_card.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&hc->timeout_tl)\00", [46 x i8] zeroinitializer }, align 32
@handle_dmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: skb too small\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"handle_dmsg\00", [20 x i8] zeroinitializer }, align 32
@handle_dmsg._entry_ptr = internal global ptr @handle_dmsg._entry, section ".printk_index", align 4
@handle_dmsg._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: skb too large\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_dmsg._entry_ptr.81 = internal global ptr @handle_dmsg._entry.79, section ".printk_index", align 4
@handle_dmsg._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: PH_ACTIVATE channel %d (1..%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_dmsg._entry_ptr.84 = internal global ptr @handle_dmsg._entry.82, section ".printk_index", align 4
@handle_dmsg._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: PH_DEACTIVATE channel %d (1..%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@handle_dmsg._entry_ptr.87 = internal global ptr @handle_dmsg._entry.85, section ".printk_index", align 4
@l1oip_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: cmd:%x %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l1oip_dctrl\00", [20 x i8] zeroinitializer }, align 32
@l1oip_dctrl._entry_ptr = internal global ptr @l1oip_dctrl._entry, section ".printk_index", align 4
@l1oip_dctrl._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: dev(%d) close from %p\0A\00", [35 x i8] zeroinitializer }, align 32
@l1oip_dctrl._entry_ptr.92 = internal global ptr @l1oip_dctrl._entry.90, section ".printk_index", align 4
@l1oip_dctrl._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: unknown command %x\0A\00", [38 x i8] zeroinitializer }, align 32
@l1oip_dctrl._entry_ptr.95 = internal global ptr @l1oip_dctrl._entry.93, section ".printk_index", align 4
@open_dchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: dev(%d) open from %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_dchannel\00", [18 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr = internal global ptr @open_dchannel._entry, section ".printk_index", align 4
@open_dchannel._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: change protocol %x to %x\0A\00", [32 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr.100 = internal global ptr @open_dchannel._entry.98, section ".printk_index", align 4
@open_dchannel._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s:cannot get module\0A\00", [40 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr.103 = internal global ptr @open_dchannel._entry.101, section ".printk_index", align 4
@open_bchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s:internal error ch %d has no bch\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_bchannel\00", [18 x i8] zeroinitializer }, align 32
@open_bchannel._entry_ptr = internal global ptr @open_bchannel._entry, section ".printk_index", align 4
@open_bchannel._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.105, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@open_bchannel._entry_ptr.107 = internal global ptr @open_bchannel._entry.106, section ".printk_index", align 4
@channel_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: got new ip address from user space.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel_dctrl\00", [18 x i8] zeroinitializer }, align 32
@channel_dctrl._entry_ptr = internal global ptr @channel_dctrl._entry, section ".printk_index", align 4
@channel_dctrl._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: removing ip address.\0A\00", [36 x i8] zeroinitializer }, align 32
@channel_dctrl._entry_ptr.112 = internal global ptr @channel_dctrl._entry.110, section ".printk_index", align 4
@channel_dctrl._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: getting ip address.\0A\00", [37 x i8] zeroinitializer }, align 32
@channel_dctrl._entry_ptr.115 = internal global ptr @channel_dctrl._entry.113, section ".printk_index", align 4
@channel_dctrl._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: unknown Op %x\0A\00", [43 x i8] zeroinitializer }, align 32
@channel_dctrl._entry_ptr.118 = internal global ptr @channel_dctrl._entry.116, section ".printk_index", align 4
@handle_bmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.119, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"handle_bmsg\00", [20 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr = internal global ptr @handle_bmsg._entry, section ".printk_index", align 4
@handle_bmsg._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.119, ptr @.str.2, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr.121 = internal global ptr @handle_bmsg._entry.120, section ".printk_index", align 4
@handle_bmsg._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.119, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: got AIS, not sending, but counting\0A\00", [54 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr.124 = internal global ptr @handle_bmsg._entry.122, section ".printk_index", align 4
@handle_bmsg._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.119, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: got silence, not sending, but counting\0A\00", [50 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr.127 = internal global ptr @handle_bmsg._entry.125, section ".printk_index", align 4
@handle_bmsg._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.119, ptr @.str.2, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr.129 = internal global ptr @handle_bmsg._entry.128, section ".printk_index", align 4
@handle_bmsg._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.119, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@handle_bmsg._entry_ptr.131 = internal global ptr @handle_bmsg._entry.130, section ".printk_index", align 4
@l1oip_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.132, ptr @.str.2, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l1oip_bctrl\00", [20 x i8] zeroinitializer }, align 32
@l1oip_bctrl._entry_ptr = internal global ptr @l1oip_bctrl._entry, section ".printk_index", align 4
@l1oip_bctrl._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: unknown prim(%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@l1oip_bctrl._entry_ptr.135 = internal global ptr @l1oip_bctrl._entry.133, section ".printk_index", align 4
@channel_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: HW_FEATURE request\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel_bctrl\00", [18 x i8] zeroinitializer }, align 32
@channel_bctrl._entry_ptr = internal global ptr @channel_bctrl._entry, section ".printk_index", align 4
@channel_bctrl._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.137, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@channel_bctrl._entry_ptr.139 = internal global ptr @channel_bctrl._entry.138, section ".printk_index", align 4
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l1oip_%s\00", [23 x i8] zeroinitializer }, align 32
@l1oip_socket_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Failed (%d) to create socket process.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l1oip_socket_open\00", [46 x i8] zeroinitializer }, align 32
@l1oip_socket_open._entry_ptr = internal global ptr @l1oip_socket_open._entry, section ".printk_index", align 4
@l1oip_socket_open._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: socket thread created\0A\00", [35 x i8] zeroinitializer }, align 32
@l1oip_socket_open._entry_ptr.145 = internal global ptr @l1oip_socket_open._entry.143, section ".printk_index", align 4
@l1oip_socket_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: socket thread exists, killing...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l1oip_socket_close\00", [45 x i8] zeroinitializer }, align 32
@l1oip_socket_close._entry_ptr = internal global ptr @l1oip_socket_close._entry, section ".printk_index", align 4
@l1oip_socket_close._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: interface become deactivated due to timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@l1oip_socket_close._entry_ptr.150 = internal global ptr @l1oip_socket_close._entry.148, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Failed to alloc recvbuf.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l1oip_socket_thread\00", [44 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr = internal global ptr @l1oip_socket_thread._entry, section ".printk_index", align 4
@l1oip_socket_thread._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Failed to create socket.\0A\00", [32 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.156 = internal global ptr @l1oip_socket_thread._entry.154, section ".printk_index", align 4
@l1oip_socket_thread._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to bind socket to port %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.159 = internal global ptr @l1oip_socket_thread._entry.157, section ".printk_index", align 4
@l1oip_socket_thread._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: socket->sk == NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.162 = internal global ptr @l1oip_socket_thread._entry.160, section ".printk_index", align 4
@l1oip_socket_thread._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: socket created and open\0A\00", [33 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.165 = internal global ptr @l1oip_socket_thread._entry.163, section ".printk_index", align 4
@l1oip_socket_thread._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.153, ptr @.str.2, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: broken pipe on socket\0A\00", [35 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.168 = internal global ptr @l1oip_socket_thread._entry.166, section ".printk_index", align 4
@l1oip_socket_thread._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.153, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: socket thread terminating\0A\00", [63 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.171 = internal global ptr @l1oip_socket_thread._entry.169, section ".printk_index", align 4
@l1oip_socket_thread._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.153, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: socket thread terminated\0A\00", [32 x i8] zeroinitializer }, align 32
@l1oip_socket_thread._entry_ptr.174 = internal global ptr @l1oip_socket_thread._entry.172, section ".printk_index", align 4
@l1oip_socket_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: received frame, parsing... (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"l1oip_socket_parse\00", [45 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr = internal global ptr @l1oip_socket_parse._entry, section ".printk_index", align 4
@l1oip_socket_parse._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: packet error - length %d below 4 bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.179 = internal global ptr @l1oip_socket_parse._entry.177, section ".printk_index", align 4
@l1oip_socket_parse._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: packet error - unknown version %d\0A\00", [55 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.182 = internal global ptr @l1oip_socket_parse._entry.180, section ".printk_index", align 4
@l1oip_socket_parse._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.176, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: packet error - received E1 packet on S0 interface\0A\00", [39 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.185 = internal global ptr @l1oip_socket_parse._entry.183, section ".printk_index", align 4
@l1oip_socket_parse._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.176, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: packet error - received S0 packet on E1 interface\0A\00", [39 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.188 = internal global ptr @l1oip_socket_parse._entry.186, section ".printk_index", align 4
@l1oip_socket_parse._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.176, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: packet error - remotecodec %d unsupported\0A\00", [47 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.191 = internal global ptr @l1oip_socket_parse._entry.189, section ".printk_index", align 4
@l1oip_socket_parse._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.176, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: packet error - packet has id 0x%x, but we have not\0A\00", [38 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.194 = internal global ptr @l1oip_socket_parse._entry.192, section ".printk_index", align 4
@l1oip_socket_parse._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.176, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: packet error - packet too short for ID value\0A\00", [44 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.197 = internal global ptr @l1oip_socket_parse._entry.195, section ".printk_index", align 4
@l1oip_socket_parse._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.176, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: packet error - ID mismatch, got 0x%x, we 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.200 = internal global ptr @l1oip_socket_parse._entry.198, section ".printk_index", align 4
@l1oip_socket_parse._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.176, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: packet error - packet has no ID, but we have\0A\00", [44 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.203 = internal global ptr @l1oip_socket_parse._entry.201, section ".printk_index", align 4
@l1oip_socket_parse._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.176, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014%s: packet error - packet too short, channel expected at position %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.206 = internal global ptr @l1oip_socket_parse._entry.204, section ".printk_index", align 4
@l1oip_socket_parse._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.176, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: packet error - packet too short, length expected at position %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.209 = internal global ptr @l1oip_socket_parse._entry.207, section ".printk_index", align 4
@l1oip_socket_parse._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.176, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: packet error - length %d at position %d exceeds total length %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.212 = internal global ptr @l1oip_socket_parse._entry.210, section ".printk_index", align 4
@l1oip_socket_parse._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.176, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014%s: packet error - length %d at position %d will not allow additional packet.\0A\00", [47 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.215 = internal global ptr @l1oip_socket_parse._entry.213, section ".printk_index", align 4
@l1oip_socket_parse._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.176, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014%s: packet error - packet too short, time base expected at position %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.218 = internal global ptr @l1oip_socket_parse._entry.216, section ".printk_index", align 4
@l1oip_socket_parse._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.176, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: interface become active due to received packet\0A\00", [42 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.221 = internal global ptr @l1oip_socket_parse._entry.219, section ".printk_index", align 4
@l1oip_socket_parse._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.176, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s: remote address changes from 0x%08x to 0x%08x (port %d to %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@l1oip_socket_parse._entry_ptr.224 = internal global ptr @l1oip_socket_parse._entry.222, section ".printk_index", align 4
@l1oip_socket_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: received empty keepalive data, ignoring\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l1oip_socket_recv\00", [46 x i8] zeroinitializer }, align 32
@l1oip_socket_recv._entry_ptr = internal global ptr @l1oip_socket_recv._entry, section ".printk_index", align 4
@l1oip_socket_recv._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: received data, sending to mISDN (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@l1oip_socket_recv._entry_ptr.229 = internal global ptr @l1oip_socket_recv._entry.227, section ".printk_index", align 4
@l1oip_socket_recv._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.226, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: packet error - channel %d out of range\0A\00", [50 x i8] zeroinitializer }, align 32
@l1oip_socket_recv._entry_ptr.232 = internal global ptr @l1oip_socket_recv._entry.230, section ".printk_index", align 4
@l1oip_socket_recv._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.226, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: packet error - channel %d not in stack\0A\00", [50 x i8] zeroinitializer }, align 32
@l1oip_socket_recv._entry_ptr.235 = internal global ptr @l1oip_socket_recv._entry.233, section ".printk_index", align 4
@l1oip_socket_recv._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.226, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: No mem for skb.\0A\00", [41 x i8] zeroinitializer }, align 32
@l1oip_socket_recv._entry_ptr.238 = internal global ptr @l1oip_socket_recv._entry.236, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@l1oip_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: timeout timer expired, turn layer one down.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l1oip_timeout\00", [18 x i8] zeroinitializer }, align 32
@l1oip_timeout._entry_ptr = internal global ptr @l1oip_timeout._entry, section ".printk_index", align 4
@l1oip_timeout._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.240, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@l1oip_timeout._entry_ptr.242 = internal global ptr @l1oip_timeout._entry.241, section ".printk_index", align 4
@l1oip_timeout._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.240, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: on demand causes ip address to be removed\0A\00", [47 x i8] zeroinitializer }, align 32
@l1oip_timeout._entry_ptr.245 = internal global ptr @l1oip_timeout._entry.243, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.246 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.248 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.249 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.250 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 64, i64 128, i64 1024]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8193]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@___asan_gen_.255 = private unnamed_addr constant [5 x i8] c"ulaw\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 245, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 244, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 236, i32 14 }
@___asan_gen_.264 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 237, i32 14 }
@___asan_gen_.267 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 238, i32 14 }
@___asan_gen_.270 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 239, i32 14 }
@___asan_gen_.273 = private unnamed_addr constant [11 x i8] c"remoteport\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 240, i32 14 }
@___asan_gen_.276 = private unnamed_addr constant [9 x i8] c"ondemand\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 241, i32 14 }
@___asan_gen_.279 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 242, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 243, i32 14 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1440, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [10 x i8] c"l1oip_cnt\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 231, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1466, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1473, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1480, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1484, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [11 x i8] c"l1oip_lock\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [12 x i8] c"l1oip_ilist\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 233, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1498, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 229, i32 37 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 808, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 272, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 284, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 289, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 334, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 232, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1292, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1299, i32 21 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1301, i32 21 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1310, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1316, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1320, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1326, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1330, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1338, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1343, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1348, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1350, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1364, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1394, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1417, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1423, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1427, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 877, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 882, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 905, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 915, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1038, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1066, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1076, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 979, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 986, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 998, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1015, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1024, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 948, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 954, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 961, i32 4 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 967, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1096, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1101, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1109, i32 5 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1120, i32 5 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1148, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1157, i32 4 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1205, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1220, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1183, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 1190, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 785, i32 22 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 789, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 796, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 759, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 768, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.685, i32 87, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 647, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 660, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 678, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 686, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 704, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 713, i32 5 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 730, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 746, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 455, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 460, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 467, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 474, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 479, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 490, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 500, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 505, i32 4 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 516, i32 4 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 523, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 531, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 546, i32 4 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 557, i32 4 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 563, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 573, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 587, i32 4 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 614, i32 4 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 361, i32 4 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 367, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 371, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 378, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 386, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 835, i32 3 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 843, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.892 = private constant [35 x i8] c"../drivers/isdn/mISDN/l1oip_core.c\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.892, i32 853, i32 4 }
@llvm.compiler.used = appending global [323 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_codectype461, ptr @__UNIQUE_ID_debugtype469, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_idtype467, ptr @__UNIQUE_ID_iptype462, ptr @__UNIQUE_ID_license459, ptr @__UNIQUE_ID_limittype466, ptr @__UNIQUE_ID_ondemandtype465, ptr @__UNIQUE_ID_porttype463, ptr @__UNIQUE_ID_remoteporttype464, ptr @__UNIQUE_ID_typetype460, ptr @__UNIQUE_ID_ulawtype468, ptr @__exitcall_l1oip_cleanup, ptr @__initcall__kmod_l1oip__470_1502_l1oip_init6, ptr @__param_codec, ptr @__param_debug, ptr @__param_id, ptr @__param_ip, ptr @__param_limit, ptr @__param_ondemand, ptr @__param_port, ptr @__param_remoteport, ptr @__param_type, ptr @__param_ulaw, ptr @channel_bctrl._entry, ptr @channel_bctrl._entry.138, ptr @channel_bctrl._entry_ptr, ptr @channel_bctrl._entry_ptr.139, ptr @channel_dctrl._entry, ptr @channel_dctrl._entry.110, ptr @channel_dctrl._entry.113, ptr @channel_dctrl._entry.116, ptr @channel_dctrl._entry_ptr, ptr @channel_dctrl._entry_ptr.112, ptr @channel_dctrl._entry_ptr.115, ptr @channel_dctrl._entry_ptr.118, ptr @handle_bmsg._entry, ptr @handle_bmsg._entry.120, ptr @handle_bmsg._entry.122, ptr @handle_bmsg._entry.125, ptr @handle_bmsg._entry.128, ptr @handle_bmsg._entry.130, ptr @handle_bmsg._entry_ptr, ptr @handle_bmsg._entry_ptr.121, ptr @handle_bmsg._entry_ptr.124, ptr @handle_bmsg._entry_ptr.127, ptr @handle_bmsg._entry_ptr.129, ptr @handle_bmsg._entry_ptr.131, ptr @handle_dmsg._entry, ptr @handle_dmsg._entry.79, ptr @handle_dmsg._entry.82, ptr @handle_dmsg._entry.85, ptr @handle_dmsg._entry_ptr, ptr @handle_dmsg._entry_ptr.81, ptr @handle_dmsg._entry_ptr.84, ptr @handle_dmsg._entry_ptr.87, ptr @init_card._entry, ptr @init_card._entry.40, ptr @init_card._entry.43, ptr @init_card._entry.46, ptr @init_card._entry.49, ptr @init_card._entry.52, ptr @init_card._entry.55, ptr @init_card._entry.58, ptr @init_card._entry.61, ptr @init_card._entry.64, ptr @init_card._entry.67, ptr @init_card._entry.70, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.42, ptr @init_card._entry_ptr.45, ptr @init_card._entry_ptr.48, ptr @init_card._entry_ptr.51, ptr @init_card._entry_ptr.54, ptr @init_card._entry_ptr.57, ptr @init_card._entry_ptr.60, ptr @init_card._entry_ptr.63, ptr @init_card._entry_ptr.66, ptr @init_card._entry_ptr.69, ptr @init_card._entry_ptr.72, ptr @l1oip_bctrl._entry, ptr @l1oip_bctrl._entry.133, ptr @l1oip_bctrl._entry_ptr, ptr @l1oip_bctrl._entry_ptr.135, ptr @l1oip_dctrl._entry, ptr @l1oip_dctrl._entry.90, ptr @l1oip_dctrl._entry.93, ptr @l1oip_dctrl._entry_ptr, ptr @l1oip_dctrl._entry_ptr.92, ptr @l1oip_dctrl._entry_ptr.95, ptr @l1oip_init._entry, ptr @l1oip_init._entry.13, ptr @l1oip_init._entry.17, ptr @l1oip_init._entry.3, ptr @l1oip_init._entry.6, ptr @l1oip_init._entry_ptr, ptr @l1oip_init._entry_ptr.15, ptr @l1oip_init._entry_ptr.19, ptr @l1oip_init._entry_ptr.5, ptr @l1oip_init._entry_ptr.8, ptr @l1oip_send_bh._entry, ptr @l1oip_send_bh._entry_ptr, ptr @l1oip_socket_close._entry, ptr @l1oip_socket_close._entry.148, ptr @l1oip_socket_close._entry_ptr, ptr @l1oip_socket_close._entry_ptr.150, ptr @l1oip_socket_open._entry, ptr @l1oip_socket_open._entry.143, ptr @l1oip_socket_open._entry_ptr, ptr @l1oip_socket_open._entry_ptr.145, ptr @l1oip_socket_parse._entry, ptr @l1oip_socket_parse._entry.177, ptr @l1oip_socket_parse._entry.180, ptr @l1oip_socket_parse._entry.183, ptr @l1oip_socket_parse._entry.186, ptr @l1oip_socket_parse._entry.189, ptr @l1oip_socket_parse._entry.192, ptr @l1oip_socket_parse._entry.195, ptr @l1oip_socket_parse._entry.198, ptr @l1oip_socket_parse._entry.201, ptr @l1oip_socket_parse._entry.204, ptr @l1oip_socket_parse._entry.207, ptr @l1oip_socket_parse._entry.210, ptr @l1oip_socket_parse._entry.213, ptr @l1oip_socket_parse._entry.216, ptr @l1oip_socket_parse._entry.219, ptr @l1oip_socket_parse._entry.222, ptr @l1oip_socket_parse._entry_ptr, ptr @l1oip_socket_parse._entry_ptr.179, ptr @l1oip_socket_parse._entry_ptr.182, ptr @l1oip_socket_parse._entry_ptr.185, ptr @l1oip_socket_parse._entry_ptr.188, ptr @l1oip_socket_parse._entry_ptr.191, ptr @l1oip_socket_parse._entry_ptr.194, ptr @l1oip_socket_parse._entry_ptr.197, ptr @l1oip_socket_parse._entry_ptr.200, ptr @l1oip_socket_parse._entry_ptr.203, ptr @l1oip_socket_parse._entry_ptr.206, ptr @l1oip_socket_parse._entry_ptr.209, ptr @l1oip_socket_parse._entry_ptr.212, ptr @l1oip_socket_parse._entry_ptr.215, ptr @l1oip_socket_parse._entry_ptr.218, ptr @l1oip_socket_parse._entry_ptr.221, ptr @l1oip_socket_parse._entry_ptr.224, ptr @l1oip_socket_recv._entry, ptr @l1oip_socket_recv._entry.227, ptr @l1oip_socket_recv._entry.230, ptr @l1oip_socket_recv._entry.233, ptr @l1oip_socket_recv._entry.236, ptr @l1oip_socket_recv._entry_ptr, ptr @l1oip_socket_recv._entry_ptr.229, ptr @l1oip_socket_recv._entry_ptr.232, ptr @l1oip_socket_recv._entry_ptr.235, ptr @l1oip_socket_recv._entry_ptr.238, ptr @l1oip_socket_send._entry, ptr @l1oip_socket_send._entry.25, ptr @l1oip_socket_send._entry.28, ptr @l1oip_socket_send._entry.31, ptr @l1oip_socket_send._entry_ptr, ptr @l1oip_socket_send._entry_ptr.27, ptr @l1oip_socket_send._entry_ptr.30, ptr @l1oip_socket_send._entry_ptr.33, ptr @l1oip_socket_thread._entry, ptr @l1oip_socket_thread._entry.154, ptr @l1oip_socket_thread._entry.157, ptr @l1oip_socket_thread._entry.160, ptr @l1oip_socket_thread._entry.163, ptr @l1oip_socket_thread._entry.166, ptr @l1oip_socket_thread._entry.169, ptr @l1oip_socket_thread._entry.172, ptr @l1oip_socket_thread._entry_ptr, ptr @l1oip_socket_thread._entry_ptr.156, ptr @l1oip_socket_thread._entry_ptr.159, ptr @l1oip_socket_thread._entry_ptr.162, ptr @l1oip_socket_thread._entry_ptr.165, ptr @l1oip_socket_thread._entry_ptr.168, ptr @l1oip_socket_thread._entry_ptr.171, ptr @l1oip_socket_thread._entry_ptr.174, ptr @l1oip_timeout._entry, ptr @l1oip_timeout._entry.241, ptr @l1oip_timeout._entry.243, ptr @l1oip_timeout._entry_ptr, ptr @l1oip_timeout._entry_ptr.242, ptr @l1oip_timeout._entry_ptr.245, ptr @open_bchannel._entry, ptr @open_bchannel._entry.106, ptr @open_bchannel._entry_ptr, ptr @open_bchannel._entry_ptr.107, ptr @open_dchannel._entry, ptr @open_dchannel._entry.101, ptr @open_dchannel._entry.98, ptr @open_dchannel._entry_ptr, ptr @open_dchannel._entry_ptr.100, ptr @open_dchannel._entry_ptr.103, ptr @ulaw, ptr @debug, ptr @type, ptr @codec, ptr @ip, ptr @port, ptr @remoteport, ptr @ondemand, ptr @limit, ptr @id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @l1oip_cnt, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @l1oip_init.__key, ptr @.str.16, ptr @l1oip_lock, ptr @l1oip_ilist, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @init_card.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @init_card.__key.73, ptr @.str.74, ptr @init_card.__key.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.123, ptr @.str.126, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @init_completion.__key, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.244], section "llvm.metadata"
@0 = internal global [213 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulaw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remoteport to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ondemand to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_ilist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_send_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_send._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_send._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_send._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dmsg._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dmsg._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_dmsg._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_dctrl._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_dctrl._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_bchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_bchannel._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_dctrl._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_dctrl._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_dctrl._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bmsg._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_bctrl._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_bctrl._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_open._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_close._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_thread._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_parse._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_recv._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_recv._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_recv._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_socket_recv._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_timeout._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l1oip_timeout._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l1oip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #13
  %0 = load i32, ptr @ulaw, align 4
  %call1 = tail call i32 @l1oip_4bit_alloc(i32 noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  store i32 0, ptr @l1oip_cnt, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end46.land.rhs_crit_edge, %while.cond.preheader
  %storemerge90 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %if.end46.land.rhs_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr @type, i32 0, i32 %storemerge90
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %land.rhs.do.end49_crit_edge, label %while.body

land.rhs.do.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

while.body:                                       ; preds = %land.rhs
  %trunc = trunc i32 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end9 [
    i8 1, label %while.body.sw.epilog_crit_edge
    i8 2, label %sw.bb4
    i8 3, label %sw.bb5
    i8 4, label %sw.bb6
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %2, 255
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %and) #13
  tail call void @l1oip_cleanup()
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %while.body.sw.epilog_crit_edge
  %tobool22.not = phi ptr [ @.str.11, %sw.bb6 ], [ @.str.11, %sw.bb5 ], [ @.str.12, %sw.bb4 ], [ @.str.12, %while.body.sw.epilog_crit_edge ]
  %bundle.0 = phi i32 [ 1, %sw.bb6 ], [ 1, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %while.body.sw.epilog_crit_edge ]
  %tobool21.not = phi ptr [ @.str.9, %sw.bb6 ], [ @.str.10, %sw.bb5 ], [ @.str.9, %sw.bb4 ], [ @.str.10, %while.body.sw.epilog_crit_edge ]
  %tobool.not.i = phi i1 [ false, %sw.bb6 ], [ true, %sw.bb5 ], [ false, %sw.bb4 ], [ true, %while.body.sw.epilog_crit_edge ]
  %pri.0 = phi i32 [ 1, %sw.bb6 ], [ 0, %sw.bb5 ], [ 1, %sw.bb4 ], [ 0, %while.body.sw.epilog_crit_edge ]
  %4 = load i32, ptr @debug, align 4
  %and14 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.epilog.if.end25_crit_edge, label %do.end19

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %storemerge90, ptr noundef nonnull %tobool21.not, ptr noundef nonnull %tobool22.not) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %sw.epilog.if.end25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 2984) #14
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %do.end31, label %do.body35

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  tail call void @l1oip_cleanup()
  br label %cleanup

do.body35:                                        ; preds = %if.end25
  %workq = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %workq, i32 noundef 0) #10
  %6 = ptrtoint ptr %workq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %workq, align 8
  %lockdep_map = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @l1oip_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry39 = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry39, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 15, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @l1oip_send_bh, ptr %func, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @l1oip_lock) #10
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @l1oip_ilist, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %10, ptr noundef nonnull @l1oip_ilist) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body35.list_add_tail.exit_crit_edge

do.body35.list_add_tail.exit_crit_edge:           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @l1oip_ilist, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @l1oip_ilist, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body35.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @l1oip_lock) #10
  %socket_lock.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %socket_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_card.__key, i16 noundef signext 3) #10
  %14 = load i32, ptr @l1oip_cnt, align 4
  %idx.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %idx.i, align 8
  %pri1.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %pri1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %pri.0, ptr %pri1.i, align 4
  %cond.i = select i1 %tobool.not.i, i32 3, i32 16
  %d_idx.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %d_idx.i, align 8
  %cond3.i = select i1 %tobool.not.i, i32 2, i32 30
  %b_num.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %b_num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond3.i, ptr %b_num.i, align 4
  %bundle4.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %bundle4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bundle.0, ptr %bundle4.i, align 8
  %name8.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 2
  %add10.i = add i32 %14, 1
  %.str.37..str.36.i = select i1 %tobool.not.i, ptr @.str.37, ptr @.str.36
  %call11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name8.i, ptr noundef nonnull %.str.37..str.36.i, i32 noundef %add10.i) #10
  %20 = load i32, ptr @l1oip_cnt, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @codec, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %switch.i = icmp ult i32 %22, 4
  br i1 %switch.i, label %sw.epilog.i, label %do.end14.i

do.end14.i:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %22) #13
  br label %if.then45

sw.epilog.i:                                      ; preds = %list_add_tail.exit
  %codec.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %codec.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %codec.i, align 4
  %24 = load i32, ptr @debug, align 4
  %and.i = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %sw.epilog.i.if.end26.i_crit_edge, label %do.end22.i

sw.epilog.i.if.end26.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.end22.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %22) #13
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end22.i, %sw.epilog.i.if.end26.i_crit_edge
  %25 = load i32, ptr @l1oip_cnt, align 4
  %arrayidx27.i = getelementptr [16 x i32], ptr @id, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %do.end31.i, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %if.end26.i.if.end34.i_crit_edge
  %28 = load i32, ptr @l1oip_cnt, align 4
  %arrayidx35.i = getelementptr [16 x i32], ptr @id, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35.i, align 4
  %id.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %id.i, align 8
  %32 = load i32, ptr @debug, align 4
  %and36.i = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end45.i_crit_edge, label %do.end41.i

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

do.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.39, i32 noundef %30) #13
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end41.i, %if.end34.i.if.end45.i_crit_edge
  %33 = load i32, ptr @l1oip_cnt, align 4
  %arrayidx46.i = getelementptr [16 x i32], ptr @ondemand, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.i, align 4
  %ondemand.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %ondemand.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ondemand.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool48.not.i = icmp eq i32 %35, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end57.i_crit_edge, label %land.lhs.true.i

if.end45.i.if.end57.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

land.lhs.true.i:                                  ; preds = %if.end45.i
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not.i = icmp eq i32 %38, 0
  br i1 %tobool50.not.i, label %do.end54.i, label %land.lhs.true.i.if.end57.i_crit_edge

land.lhs.true.i.if.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

do.end54.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39) #13
  br label %if.then45

if.end57.i:                                       ; preds = %land.lhs.true.i.if.end57.i_crit_edge, %if.end45.i.if.end57.i_crit_edge
  %arrayidx58.i = getelementptr [16 x i32], ptr @limit, i32 0, i32 %33
  %39 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool59.not.i = icmp eq i32 %40, 0
  br i1 %tobool59.not.i, label %if.end63.ithread-pre-split, label %if.then60.i

if.then60.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %b_num.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %b_num.i, align 4
  br label %if.end63.i

if.end63.ithread-pre-split:                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %b_num.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %b_num.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.end63.ithread-pre-split, %if.then60.i
  %43 = phi i32 [ %.pr, %if.end63.ithread-pre-split ], [ %40, %if.then60.i ]
  br i1 %tobool.not.i, label %land.lhs.true65.i, label %land.lhs.true76.critedge.i

land.lhs.true65.i:                                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp67.i = icmp sgt i32 %43, 2
  br i1 %cmp67.i, label %do.end71.i, label %land.lhs.true65.i.if.end101.i_crit_edge

land.lhs.true65.i.if.end101.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i

do.end71.i:                                       ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #13
  br label %if.then45

land.lhs.true76.critedge.i:                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %43)
  %cmp78.i = icmp sgt i32 %43, 126
  br i1 %cmp78.i, label %do.end82.i, label %land.lhs.true87.critedge.i

do.end82.i:                                       ; preds = %land.lhs.true76.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #13
  br label %if.then45

land.lhs.true87.critedge.i:                       ; preds = %land.lhs.true76.critedge.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %43)
  %cmp89.i = icmp sgt i32 %43, 30
  br i1 %cmp89.i, label %do.end93.i, label %land.lhs.true87.critedge.i.if.end101.i_crit_edge

land.lhs.true87.critedge.i.if.end101.i_crit_edge: ; preds = %land.lhs.true87.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101.i

do.end93.i:                                       ; preds = %land.lhs.true87.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #13
  %limit.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 11
  %44 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %limit.i, align 8
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %45) #13
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.end93.i, %land.lhs.true87.critedge.i.if.end101.i_crit_edge, %land.lhs.true65.i.if.end101.i_crit_edge
  %46 = load i32, ptr @l1oip_cnt, align 4
  %shl.i = shl i32 %46, 2
  %arrayidx102.i = getelementptr [64 x i32], ptr @ip, i32 0, i32 %shl.i
  %47 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx102.i, align 4
  %shl103.i = shl i32 %48, 24
  %add105.i = or i32 %shl.i, 1
  %arrayidx106.i = getelementptr [64 x i32], ptr @ip, i32 0, i32 %add105.i
  %49 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx106.i, align 4
  %shl107.i = shl i32 %50, 16
  %or.i = or i32 %shl107.i, %shl103.i
  %add109.i = or i32 %shl.i, 2
  %arrayidx110.i = getelementptr [64 x i32], ptr @ip, i32 0, i32 %add109.i
  %51 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx110.i, align 4
  %shl111.i = shl i32 %52, 8
  %or112.i = or i32 %or.i, %shl111.i
  %add114.i = or i32 %shl.i, 3
  %arrayidx115.i = getelementptr [64 x i32], ptr @ip, i32 0, i32 %add114.i
  %53 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx115.i, align 4
  %or116.i = or i32 %or112.i, %54
  %remoteip.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 20
  %55 = ptrtoint ptr %remoteip.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or116.i, ptr %remoteip.i, align 8
  %arrayidx117.i = getelementptr [16 x i32], ptr @port, i32 0, i32 %46
  %56 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool118.not.i = icmp eq i32 %57, 0
  %add119.i = add i32 %46, 931
  %spec.select.i = select i1 %tobool118.not.i, i32 %add119.i, i32 %57
  %conv.i = trunc i32 %spec.select.i to i16
  %localport.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 21
  %58 = ptrtoint ptr %localport.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %localport.i, align 4
  %arrayidx121.i = getelementptr [16 x i32], ptr @remoteport, i32 0, i32 %46
  %59 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool122.not.i = icmp eq i32 %60, 0
  %conv125.i = trunc i32 %60 to i16
  %spec.select347.i = select i1 %tobool122.not.i, i16 %conv.i, i16 %conv125.i
  %61 = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 22
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %spec.select347.i, ptr %61, align 2
  %63 = load i32, ptr @debug, align 4
  %and130.i = and i32 %63, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.end101.i.if.end152.i_crit_edge, label %do.end135.i

if.end101.i.if.end152.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

do.end135.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv138.i = and i32 %spec.select.i, 65535
  %shr.i = lshr i32 %or116.i, 24
  %shr141.i = lshr i32 %or116.i, 16
  %and142.i = and i32 %shr141.i, 255
  %shr144.i = lshr i32 %or116.i, 8
  %and145.i = and i32 %shr144.i, 255
  %and147.i = and i32 %54, 255
  %conv149.i = zext i16 %spec.select347.i to i32
  %64 = ptrtoint ptr %ondemand.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ondemand.i, align 4
  %call151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.39, i32 noundef %conv138.i, i32 noundef %shr.i, i32 noundef %and142.i, i32 noundef %and145.i, i32 noundef %and147.i, i32 noundef %conv149.i, i32 noundef %65) #13
  br label %if.end152.i

if.end152.i:                                      ; preds = %do.end135.i, %if.end101.i.if.end152.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 1280) #14
  %tobool154.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool154.not.i, label %if.end152.i.if.then45_crit_edge, label %if.end156.i

if.end152.i.if.then45_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end156.i:                                      ; preds = %if.end152.i
  %67 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.dchannel, ptr %call7.i.i.i, i32 0, i32 15
  %68 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %debug.i, align 4
  %call157.i = tail call i32 @mISDN_initdchannel(ptr noundef nonnull %call7.i.i.i, i32 noundef 300, ptr noundef null) #10
  %hw.i = getelementptr inbounds %struct.dchannel, ptr %call7.i.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %spec.select348.i = select i1 %tobool.not.i, i32 6, i32 24
  %70 = getelementptr inbounds %struct.mISDNdevice, ptr %call7.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select348.i, ptr %70, align 8
  %Bprotocols.i = getelementptr inbounds %struct.mISDNdevice, ptr %call7.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 6, ptr %Bprotocols.i, align 4
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i.i, i32 0, i32 7
  %73 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @handle_dmsg, ptr %send.i, align 8
  %ctrl.i = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @l1oip_dctrl, ptr %ctrl.i, align 8
  %75 = ptrtoint ptr %b_num.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %b_num.i, align 4
  %nrbchan.i = getelementptr inbounds %struct.mISDNdevice, ptr %call7.i.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %nrbchan.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %nrbchan.i, align 8
  %78 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %d_idx.i, align 8
  %slot.i = getelementptr inbounds %struct.dchannel, ptr %call7.i.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %slot.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %slot.i, align 8
  %arrayidx172.i = getelementptr %struct.l1oip, ptr %call7.i.i, i32 0, i32 27, i32 %79
  %81 = ptrtoint ptr %arrayidx172.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i, ptr %arrayidx172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp176344.not.i = icmp eq i32 %76, 0
  br i1 %cmp176344.not.i, label %if.end156.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end156.i.for.end.i_crit_edge:                  ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end156.i
  %bchannels.i = getelementptr inbounds %struct.mISDNdevice, ptr %call7.i.i.i, i32 0, i32 6
  %channelmap.i = getelementptr inbounds %struct.mISDNdevice, ptr %call7.i.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0346.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %spec.select342.i, %list_add.exit.i.for.body.i_crit_edge ]
  %ch.0345.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc213.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %ch.0345.i)
  %cmp178.i = icmp eq i32 %ch.0345.i, 15
  %inc.i = zext i1 %cmp178.i to i32
  %spec.select342.i = add i32 %i.0346.i, %inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i343.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 268) #14
  %tobool183.not.i = icmp eq ptr %call7.i.i343.i, null
  br i1 %tobool183.not.i, label %do.end187.i, label %if.end190.i

do.end187.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.39) #13
  br label %if.then45

if.end190.i:                                      ; preds = %for.body.i
  %add191.i = add i32 %spec.select342.i, %ch.0345.i
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %call7.i.i343.i, i32 0, i32 1
  %83 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add191.i, ptr %nr.i, align 4
  %slot193.i = getelementptr inbounds %struct.bchannel, ptr %call7.i.i343.i, i32 0, i32 6
  %84 = ptrtoint ptr %slot193.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add191.i, ptr %slot193.i, align 8
  %85 = load i32, ptr @debug, align 4
  %debug194.i = getelementptr inbounds %struct.bchannel, ptr %call7.i.i343.i, i32 0, i32 21
  %86 = ptrtoint ptr %debug194.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %debug194.i, align 8
  %call195.i = tail call i32 @mISDN_initbchannel(ptr noundef nonnull %call7.i.i343.i, i16 noundef zeroext 2056, i16 noundef zeroext 0) #10
  %hw196.i = getelementptr inbounds %struct.bchannel, ptr %call7.i.i343.i, i32 0, i32 5
  %87 = ptrtoint ptr %hw196.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i, ptr %hw196.i, align 4
  %send198.i = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i343.i, i32 0, i32 7
  %88 = ptrtoint ptr %send198.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @handle_bmsg, ptr %send198.i, align 8
  %ctrl200.i = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i343.i, i32 0, i32 9
  %89 = ptrtoint ptr %ctrl200.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @l1oip_bctrl, ptr %ctrl200.i, align 8
  %nr203.i = getelementptr inbounds %struct.mISDNchannel, ptr %call7.i.i343.i, i32 0, i32 2
  %90 = ptrtoint ptr %nr203.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %add191.i, ptr %nr203.i, align 4
  %91 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bchannels.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i343.i, ptr noundef %bchannels.i, ptr noundef %92) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end190.i.list_add.exit.i_crit_edge

if.end190.i.list_add.exit.i_crit_edge:            ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i343.i, ptr %prev1.i.i.i, align 4
  %94 = ptrtoint ptr %call7.i.i343.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %call7.i.i343.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i343.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %bchannels.i, ptr %prev3.i.i.i, align 4
  %96 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i343.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end190.i.list_add.exit.i_crit_edge
  %bch209.i = getelementptr %struct.l1oip, ptr %call7.i.i, i32 0, i32 27, i32 %add191.i, i32 1
  %97 = ptrtoint ptr %bch209.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i343.i, ptr %bch209.i, align 4
  %98 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr.i, align 4
  %and.i.i = and i32 %99, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %shr.i.i = lshr i32 %99, 3
  %arrayidx.i.i = getelementptr i8, ptr %channelmap.i, i32 %shr.i.i
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i, align 1
  %102 = trunc i32 %shl.i.i to i8
  %conv1.i.i = or i8 %101, %102
  store i8 %conv1.i.i, ptr %arrayidx.i.i, align 1
  %inc213.i = add nuw i32 %ch.0345.i, 1
  %103 = ptrtoint ptr %nrbchan.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nrbchan.i, align 8
  %cmp176.i = icmp ult i32 %inc213.i, %104
  br i1 %cmp176.i, label %list_add.exit.i.for.body.i_crit_edge, label %list_add.exit.i.for.end.i_crit_edge

list_add.exit.i.for.end.i_crit_edge:              ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %list_add.exit.i.for.end.i_crit_edge, %if.end156.i.for.end.i_crit_edge
  %call217.i = tail call i32 @mISDN_register_device(ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef %name8.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217.i)
  %tobool218.not.i = icmp eq i32 %call217.i, 0
  br i1 %tobool218.not.i, label %if.end220.i, label %for.end.i.if.then45_crit_edge

for.end.i.if.then45_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.end220.i:                                      ; preds = %for.end.i
  %registered.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %registered.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %registered.i, align 8
  %106 = load i32, ptr @debug, align 4
  %and221.i = and i32 %106, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i, label %if.end220.i.if.end230.i_crit_edge, label %do.end226.i

if.end220.i.if.end230.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230.i

do.end226.i:                                      ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = load i32, ptr @l1oip_cnt, align 4
  %add228.i = add i32 %107, 1
  %call229.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.39, i32 noundef %add228.i) #13
  br label %if.end230.i

if.end230.i:                                      ; preds = %do.end226.i, %if.end220.i.if.end230.i_crit_edge
  %call231.i = tail call fastcc i32 @l1oip_socket_open(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231.i)
  %tobool232.not.i = icmp eq i32 %call231.i, 0
  br i1 %tobool232.not.i, label %if.end46, label %if.end230.i.if.then45_crit_edge

if.end230.i.if.then45_crit_edge:                  ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45

if.then45:                                        ; preds = %if.end230.i.if.then45_crit_edge, %for.end.i.if.then45_crit_edge, %do.end187.i, %if.end152.i.if.then45_crit_edge, %do.end82.i, %do.end71.i, %do.end54.i, %do.end14.i
  %retval.0.i.ph = phi i32 [ -22, %do.end54.i ], [ -22, %do.end71.i ], [ -12, %do.end187.i ], [ -22, %do.end82.i ], [ -22, %do.end14.i ], [ -12, %if.end152.i.if.then45_crit_edge ], [ %call217.i, %for.end.i.if.then45_crit_edge ], [ %call231.i, %if.end230.i.if.then45_crit_edge ]
  tail call void @l1oip_cleanup()
  br label %cleanup

if.end46:                                         ; preds = %if.end230.i
  %keep_tl.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %keep_tl.i, ptr noundef nonnull @l1oip_keepalive, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef nonnull @init_card.__key.73) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %add238.i = add i32 %108, 200
  %expires.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 12, i32 1
  %109 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add238.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %keep_tl.i) #10
  %timeout_tl.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %timeout_tl.i, ptr noundef nonnull @l1oip_timeout, i32 noundef 0, ptr noundef nonnull @.str.76, ptr noundef nonnull @init_card.__key.75) #10
  %timeout_on.i = getelementptr inbounds %struct.l1oip, ptr %call7.i.i, i32 0, i32 14
  %110 = ptrtoint ptr %timeout_on.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %timeout_on.i, align 4
  %111 = load i32, ptr @l1oip_cnt, align 4
  %inc = add i32 %111, 1
  store i32 %inc, ptr @l1oip_cnt, align 4
  %cmp = icmp slt i32 %inc, 16
  br i1 %cmp, label %if.end46.land.rhs_crit_edge, label %if.end46.do.end49_crit_edge

if.end46.do.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

if.end46.land.rhs_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end49:                                         ; preds = %if.end46.do.end49_crit_edge, %land.rhs.do.end49_crit_edge
  %storemerge.lcssa = phi i32 [ %storemerge90, %land.rhs.do.end49_crit_edge ], [ %inc, %if.end46.do.end49_crit_edge ]
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %storemerge.lcssa) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then45, %do.end31, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end9 ], [ %retval.0.i.ph, %if.then45 ], [ -12, %do.end31 ], [ 0, %do.end49 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1oip_cleanup() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l1oip_ilist, align 4
  %cmp.not14 = icmp eq ptr %0, @l1oip_ilist
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %release_card.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %hc.015 = phi ptr [ %next.0, %release_card.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %hc.015 to i32
  call void @__asan_load4_noabort(i32 %1)
  %next.0 = load ptr, ptr %hc.015, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %keep_tl.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 12
  %call2.i = tail call i32 @del_timer(ptr noundef %keep_tl.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %pprev.i.i73.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 13, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i73.i, align 4
  %tobool.not.i.i74.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i74.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %timeout_tl.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 13
  %call7.i = tail call i32 @del_timer(ptr noundef %timeout_tl.i) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %workq.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 15
  %call9.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq.i) #10
  %socket_thread.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 18
  %6 = ptrtoint ptr %socket_thread.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socket_thread.i, align 8
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @l1oip_socket_close(ptr noundef %hc.015) #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %registered.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 1
  %8 = ptrtoint ptr %registered.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %registered.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not.i = icmp eq i32 %9, 0
  br i1 %tobool13.not.i, label %if.end12.i.for.body.i.preheader_crit_edge, label %land.lhs.true.i

if.end12.i.for.body.i.preheader_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %if.end12.i
  %d_idx.i = getelementptr inbounds %struct.l1oip, ptr %hc.015, i32 0, i32 5
  %10 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %d_idx.i, align 8
  %arrayidx.i = getelementptr %struct.l1oip, ptr %hc.015, i32 0, i32 27, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool14.not.i = icmp eq ptr %13, null
  br i1 %tobool14.not.i, label %land.lhs.true.i.for.body.i.preheader_crit_edge, label %if.then15.i

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mISDN_unregister_device(ptr noundef nonnull %13) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then15.i, %land.lhs.true.i.for.body.i.preheader_crit_edge, %if.end12.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %ch.076.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx22.i = getelementptr %struct.l1oip, ptr %hc.015, i32 0, i32 27, i32 %ch.076.i
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx22.i, align 4
  %tobool24.not.i = icmp eq ptr %15, null
  br i1 %tobool24.not.i, label %for.body.i.if.end33.i_crit_edge, label %if.then25.i

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then25.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i = tail call i32 @mISDN_freedchannel(ptr noundef nonnull %15) #10
  %16 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then25.i, %for.body.i.if.end33.i_crit_edge
  %bch.i = getelementptr %struct.l1oip, ptr %hc.015, i32 0, i32 27, i32 %ch.076.i, i32 1
  %18 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bch.i, align 4
  %tobool36.not.i = icmp eq ptr %19, null
  br i1 %tobool36.not.i, label %if.end33.i.for.inc.i_crit_edge, label %if.then37.i

if.end33.i.for.inc.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mISDN_freebchannel(ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bch.i, align 4
  tail call void @kfree(ptr noundef %21) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then37.i, %if.end33.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %ch.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @l1oip_lock) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hc.015) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.release_card.exit_crit_edge

for.end.i.release_card.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_card.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %hc.015, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %hc.015 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hc.015, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %release_card.exit

release_card.exit:                                ; preds = %if.end.i.i.i, %for.end.i.release_card.exit_crit_edge
  %28 = ptrtoint ptr %hc.015 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %hc.015, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %hc.015, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @l1oip_lock) #10
  tail call void @kfree(ptr noundef %hc.015) #10
  %cmp.not = icmp eq ptr %next.0, @l1oip_ilist
  br i1 %cmp.not, label %release_card.exit.for.end_crit_edge, label %release_card.exit.for.body_crit_edge

release_card.exit.for.body_crit_edge:             ; preds = %release_card.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

release_card.exit.for.end_crit_edge:              ; preds = %release_card.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %release_card.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @l1oip_4bit_free() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1oip_4bit_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1oip_send_bh(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %d_idx = getelementptr i8, ptr %work, i32 -128
  %1 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %d_idx, align 8
  %conv = trunc i32 %2 to i8
  tail call fastcc void @l1oip_socket_send(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l1oip_socket_send(ptr noundef %hc, i8 noundef zeroext %localcodec, i8 noundef zeroext %channel, i16 noundef zeroext %timebase, ptr noundef %buf, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  %frame = alloca [332 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 332, ptr nonnull %frame) #10
  %0 = getelementptr inbounds i8, ptr %frame, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 331)
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %len) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %expires = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 12, i32 1
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add.neg = add i32 %4, -500
  %sub = sub i32 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %keep_tl = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add3 = add i32 %6, 1500
  %call4 = tail call i32 @mod_timer(ptr noundef %keep_tl, i32 noundef %add3) #10
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add5 = add i32 %7, 1500
  %8 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add5, ptr %expires, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then1
  %9 = load i32, ptr @debug, align 4
  %and9 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end17_crit_edge, label %do.end14

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end8.if.end17_crit_edge
  %sin_addr = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 24, i32 2
  %10 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.end17.if.then21_crit_edge, label %lor.lhs.false

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end17
  %sin_port = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sin_port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool20.not = icmp eq i16 %13, 0
  br i1 %tobool20.not, label %lor.lhs.false.if.then21_crit_edge, label %if.end31

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %14 = load i32, ptr @debug, align 4
  %and22 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %do.end27

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24) #13
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false
  %pri = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 4
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pri, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool32.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool32.not, i8 0, i8 32
  %id = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 7
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not = icmp eq i32 %18, 0
  %cond34 = select i1 %tobool33.not, i8 0, i8 16
  %or35 = or i8 %cond, %localcodec
  %or36 = or i8 %or35, %cond34
  %incdec.ptr = getelementptr inbounds i8, ptr %frame, i32 1
  %19 = ptrtoint ptr %frame to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or36, ptr %frame, align 1
  br i1 %tobool33.not, label %if.end31.if.end55_crit_edge, label %if.then40

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %18, 24
  %conv42 = trunc i32 %shr to i8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %frame, i32 2
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv42, ptr %incdec.ptr, align 1
  %shr45 = lshr i32 %18, 16
  %conv46 = trunc i32 %shr45 to i8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %frame, i32 3
  %21 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv46, ptr %incdec.ptr43, align 1
  %shr49 = lshr i32 %18, 8
  %conv50 = trunc i32 %shr49 to i8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %frame, i32 4
  %22 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv50, ptr %incdec.ptr47, align 1
  %conv53 = trunc i32 %18 to i8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %frame, i32 5
  %23 = ptrtoint ptr %incdec.ptr51 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv53, ptr %incdec.ptr51, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then40, %if.end31.if.end55_crit_edge
  %p.0 = phi ptr [ %incdec.ptr54, %if.then40 ], [ %incdec.ptr, %if.end31.if.end55_crit_edge ]
  %conv56 = zext i8 %channel to i32
  %incdec.ptr59 = getelementptr i8, ptr %p.0, i32 1
  %24 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %channel, ptr %p.0, align 1
  %25 = lshr i16 %timebase, 8
  %conv62 = trunc i16 %25 to i8
  %incdec.ptr63 = getelementptr i8, ptr %p.0, i32 2
  %26 = ptrtoint ptr %incdec.ptr59 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv62, ptr %incdec.ptr59, align 1
  %conv64 = trunc i16 %timebase to i8
  %incdec.ptr65 = getelementptr i8, ptr %p.0, i32 3
  %27 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv64, ptr %incdec.ptr63, align 1
  %tobool66.not = icmp eq ptr %buf, null
  br i1 %tobool66.not, label %if.end55.if.end94_crit_edge, label %land.lhs.true

if.end55.if.end94_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool67.not = icmp eq i32 %len, 0
  br i1 %tobool67.not, label %land.lhs.true.if.end94_crit_edge, label %if.then68

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then68:                                        ; preds = %land.lhs.true
  %28 = zext i8 %localcodec to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %localcodec, label %if.then68.if.else90_crit_edge [
    i8 1, label %land.lhs.true72
    i8 2, label %land.lhs.true80
    i8 3, label %if.then88
  ]

if.then68.if.else90_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

land.lhs.true72:                                  ; preds = %if.then68
  %29 = load i32, ptr @ulaw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool73.not = icmp eq i32 %29, 0
  br i1 %tobool73.not, label %land.lhs.true72.if.else90_crit_edge, label %if.then74

land.lhs.true72.if.else90_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = call i32 @l1oip_ulaw_to_alaw(ptr noundef nonnull %buf, i32 noundef %len, ptr noundef %incdec.ptr65) #10
  br label %if.end94

land.lhs.true80:                                  ; preds = %if.then68
  %30 = load i32, ptr @ulaw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool81.not = icmp eq i32 %30, 0
  br i1 %tobool81.not, label %if.then82, label %land.lhs.true80.if.else90_crit_edge

land.lhs.true80.if.else90_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else90

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = call i32 @l1oip_alaw_to_ulaw(ptr noundef nonnull %buf, i32 noundef %len, ptr noundef %incdec.ptr65) #10
  br label %if.end94

if.then88:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %codecstate = getelementptr %struct.l1oip, ptr %hc, i32 0, i32 27, i32 %conv56, i32 4
  %call89 = call i32 @l1oip_law_to_4bit(ptr noundef nonnull %buf, i32 noundef %len, ptr noundef %incdec.ptr65, ptr noundef %codecstate) #10
  br label %if.end94

if.else90:                                        ; preds = %land.lhs.true80.if.else90_crit_edge, %land.lhs.true72.if.else90_crit_edge, %if.then68.if.else90_crit_edge
  %31 = call ptr @memcpy(ptr %incdec.ptr65, ptr %buf, i32 %len)
  br label %if.end94

if.end94:                                         ; preds = %if.else90, %if.then88, %if.then82, %if.then74, %land.lhs.true.if.end94_crit_edge, %if.end55.if.end94_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then74 ], [ %call89, %if.then88 ], [ %len, %if.else90 ], [ %len, %if.then82 ], [ 0, %land.lhs.true.if.end94_crit_edge ], [ %len, %if.end55.if.end94_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr65 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %frame to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add96 = add i32 %len.addr.0, %sub.ptr.sub
  %socket_lock = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %socket_lock) #10
  %socket97 = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 16
  %32 = ptrtoint ptr %socket97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socket97, align 4
  %tobool98.not = icmp eq ptr %33, null
  br i1 %tobool98.not, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %socket_lock) #10
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %34 = ptrtoint ptr %socket97 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %socket97, align 4
  call void @_raw_spin_unlock(ptr noundef %socket_lock) #10
  %35 = load i32, ptr @debug, align 4
  %and105 = and i32 %35, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end101.if.end113_crit_edge, label %do.end110

if.end101.if.end113_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.end110:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, i32 noundef %add96) #13
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %if.end101.if.end113_crit_edge
  %sendiov = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 26
  %36 = ptrtoint ptr %sendiov to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %frame, ptr %sendiov, align 8
  %iov_len = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 26, i32 1
  %37 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add96, ptr %iov_len, align 4
  %sendmsg = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 25
  %call117 = call i32 @kernel_sendmsg(ptr noundef nonnull %33, ptr noundef %sendmsg, ptr noundef %sendiov, i32 noundef 1, i32 noundef %add96) #10
  %38 = ptrtoint ptr %socket97 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %socket97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.then99, %do.end27, %if.then21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 332, ptr nonnull %frame) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1oip_ulaw_to_alaw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1oip_alaw_to_ulaw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1oip_law_to_4bit(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initdchannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_dmsg(ptr noundef %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %sw.bb
    i32 257, label %sw.bb23
    i32 513, label %sw.bb39
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %6)
  %cmp6 = icmp ugt i32 %6, 300
  br i1 %cmp6, label %do.end12, label %while.body.preheader

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78) #13
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %slot = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %p.0114 = phi ptr [ %add.ptr22, %while.body.while.body_crit_edge ], [ %8, %while.body.preheader ]
  %l.0113 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %6, %while.body.preheader ]
  %9 = tail call i32 @llvm.smin.i32(i32 %l.0113, i32 300)
  %10 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot, align 8
  %conv = trunc i32 %11 to i8
  %tx_counter = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %11, i32 2
  %12 = ptrtoint ptr %tx_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_counter, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_counter, align 4
  %conv20 = trunc i32 %13 to i16
  tail call fastcc void @l1oip_socket_send(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %conv, i16 noundef zeroext %conv20, ptr noundef %p.0114, i32 noundef %9)
  %add.ptr22 = getelementptr i8, ptr %p.0114, i32 %9
  %sub = sub i32 %l.0113, %9
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %id, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %15, ptr noundef %skb) #10
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  %and = and i32 %16, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %sw.bb23.if.end32_crit_edge, label %do.end28

sw.bb23.if.end32_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end28:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %slot30 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 7
  %17 = ptrtoint ptr %slot30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slot30, align 8
  %b_num = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %b_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %b_num, align 4
  %add = add i32 %20, 1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, i32 noundef %18, i32 noundef %add) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %sw.bb23.if.end32_crit_edge
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %Flags = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %Flags, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  %id37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %id37 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %id37, align 1
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 258, i32 noundef %25, ptr noundef %skb) #10
  br label %cleanup

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 514, i32 noundef %25, ptr noundef %skb) #10
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %26 = load i32, ptr @debug, align 4
  %and40 = and i32 %26, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %sw.bb39.if.end51_crit_edge, label %do.end45

sw.bb39.if.end51_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end45:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #12
  %slot47 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 7
  %27 = ptrtoint ptr %slot47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slot47, align 8
  %b_num48 = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %b_num48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_num48, align 4
  %add49 = add i32 %30, 1
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.78, i32 noundef %28, i32 noundef %add49) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %sw.bb39.if.end51_crit_edge
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %Flags52 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %31 = ptrtoint ptr %Flags52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %Flags52, align 4
  %33 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not = icmp eq i32 %33, 0
  %id58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %id58 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %id58, align 1
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 258, i32 noundef %35, ptr noundef %skb) #10
  br label %cleanup

if.else57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 514, i32 noundef %35, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.then55, %if.else, %if.then35, %while.end, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %if.else ], [ 0, %if.then35 ], [ 0, %if.else57 ], [ 0, %if.then55 ], [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1oip_dctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 15
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef %cmd, ptr noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %cmd, label %sw.default30 [
    i32 256, label %sw.bb
    i32 512, label %sw.bb17
    i32 768, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb.sw.bb5_crit_edge
    i32 2, label %sw.bb.sw.bb5_crit_edge67
    i32 3, label %sw.bb.sw.bb10_crit_edge
    i32 4, label %sw.bb.sw.bb10_crit_edge68
  ]

sw.bb.sw.bb10_crit_edge68:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.bb.sw.bb10_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.bb.sw.bb5_crit_edge67:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge67
  %pri = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pri, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb5.sw.epilog41_crit_edge

sw.bb5.sw.epilog41_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call fastcc i32 @open_dchannel(ptr noundef %ch, ptr noundef %arg)
  br label %sw.epilog41

sw.bb10:                                          ; preds = %sw.bb.sw.bb10_crit_edge, %sw.bb.sw.bb10_crit_edge68
  %pri11 = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %pri11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pri11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %sw.bb10.sw.epilog41_crit_edge, label %if.end14

sw.bb10.sw.epilog41_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call fastcc i32 @open_dchannel(ptr noundef %ch, ptr noundef %arg)
  br label %sw.epilog41

sw.default:                                       ; preds = %sw.bb
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel.i, align 1
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.i.i = icmp sgt i8 %13, -1
  br i1 %cmp.i.i, label %test_channelmap.exit.i, label %sw.default.sw.epilog41_crit_edge

sw.default.sw.epilog41_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

test_channelmap.exit.i:                           ; preds = %sw.default
  %channelmap.i = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 5
  %shr.i.i = lshr i32 %conv.i, 3
  %arrayidx.i.i = getelementptr i8, ptr %channelmap.i, i32 %shr.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %and.i.i = and i32 %conv.i, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %and1.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond, label %test_channelmap.exit.i.sw.epilog41_crit_edge, label %if.end3.i

test_channelmap.exit.i.sw.epilog41_crit_edge:     ; preds = %test_channelmap.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

if.end3.i:                                        ; preds = %test_channelmap.exit.i
  %bch7.i = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %conv.i, i32 1
  %16 = ptrtoint ptr %bch7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bch7.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %conv.i) #13
  br label %sw.epilog41

if.end11.i:                                       ; preds = %if.end3.i
  %Flags.i = getelementptr inbounds %struct.bchannel, ptr %17, i32 0, i32 2
  %call12.i = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.sw.epilog41_crit_edge

if.end11.i.sw.epilog41_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

if.end15.i:                                       ; preds = %if.end11.i
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 4
  %protocol18.i = getelementptr inbounds %struct.mISDNchannel, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %protocol18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %protocol18.i, align 4
  %ch20.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %ch20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %ch20.i, align 4
  %call21.i = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call21.i, label %if.end15.i.sw.epilog41_crit_edge, label %do.end25.i

if.end15.i.sw.epilog41_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

do.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.105) #13
  br label %sw.epilog41

sw.bb17:                                          ; preds = %if.end
  %22 = load i32, ptr @debug, align 4
  %and18 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %sw.bb17.if.end27_crit_edge, label %do.end23

sw.bb17.if.end27_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end23:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89, i32 noundef %24, ptr noundef %25) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %sw.bb17.if.end27_crit_edge
  tail call void @module_put(ptr noundef null) #10
  br label %sw.epilog41

sw.bb28:                                          ; preds = %if.end
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arg, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %29, label %do.end44.i [
    i32 0, label %sw.bb.i
    i32 64, label %sw.bb2.i
    i32 128, label %sw.bb13.i
    i32 1024, label %sw.bb25.i
  ]

sw.bb.i:                                          ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1216, ptr %arg, align 4
  br label %sw.epilog41

sw.bb2.i:                                         ; preds = %sw.bb28
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %32 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p1.i, align 4
  %remoteip.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 20
  %34 = ptrtoint ptr %remoteip.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %remoteip.i, align 8
  %p2.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 3
  %35 = ptrtoint ptr %p2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p2.i, align 4
  %conv.i60 = trunc i32 %36 to i16
  %remoteport.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 22
  %37 = ptrtoint ptr %remoteport.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i60, ptr %remoteport.i, align 2
  %38 = load i32, ptr %p2.i, align 4
  %39 = lshr i32 %38, 16
  %conv4.i = trunc i32 %39 to i16
  %localport.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 21
  %40 = ptrtoint ptr %localport.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv4.i, ptr %localport.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i60)
  %tobool.not.i61 = icmp eq i16 %conv.i60, 0
  br i1 %tobool.not.i61, label %if.then.i, label %sw.bb2.i.if.end.i62_crit_edge

sw.bb2.i.if.end.i62_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i62

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %remoteport.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv4.i, ptr %remoteport.i, align 2
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i, %sw.bb2.i.if.end.i62_crit_edge
  %42 = load i32, ptr @debug, align 4
  %and8.i = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i62.if.end11.i65_crit_edge, label %do.end.i63

if.end.i62.if.end11.i65_crit_edge:                ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i65

do.end.i63:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #13
  br label %if.end11.i65

if.end11.i65:                                     ; preds = %do.end.i63, %if.end.i62.if.end11.i65_crit_edge
  %call12.i64 = tail call fastcc i32 @l1oip_socket_open(ptr noundef %27) #10
  br label %sw.epilog41

sw.bb13.i:                                        ; preds = %sw.bb28
  %43 = load i32, ptr @debug, align 4
  %and14.i = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %sw.bb13.i.if.end22.i_crit_edge, label %do.end19.i

sw.bb13.i.if.end22.i_crit_edge:                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

do.end19.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109) #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end19.i, %sw.bb13.i.if.end22.i_crit_edge
  %remoteip23.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 20
  %44 = ptrtoint ptr %remoteip23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %remoteip23.i, align 8
  %call24.i = tail call fastcc i32 @l1oip_socket_open(ptr noundef %27) #10
  br label %sw.epilog41

sw.bb25.i:                                        ; preds = %sw.bb28
  %45 = load i32, ptr @debug, align 4
  %and26.i = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %sw.bb25.i.if.end34.i_crit_edge, label %do.end31.i

sw.bb25.i.if.end34.i_crit_edge:                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

do.end31.i:                                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109) #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end31.i, %sw.bb25.i.if.end34.i_crit_edge
  %remoteip35.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 20
  %46 = ptrtoint ptr %remoteip35.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %remoteip35.i, align 8
  %p136.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %48 = ptrtoint ptr %p136.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %p136.i, align 4
  %remoteport37.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 22
  %49 = ptrtoint ptr %remoteport37.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %remoteport37.i, align 2
  %conv38.i = zext i16 %50 to i32
  %localport39.i = getelementptr inbounds %struct.l1oip, ptr %27, i32 0, i32 21
  %51 = ptrtoint ptr %localport39.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %localport39.i, align 4
  %conv40.i = zext i16 %52 to i32
  %shl.i = shl nuw i32 %conv40.i, 16
  %or.i = or i32 %shl.i, %conv38.i
  %p241.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 3
  %53 = ptrtoint ptr %p241.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %p241.i, align 4
  br label %sw.epilog41

do.end44.i:                                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.109, i32 noundef %29) #13
  br label %sw.epilog41

sw.default30:                                     ; preds = %if.end
  %54 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug, align 4
  %and32 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.default30.sw.epilog41_crit_edge, label %do.end37

sw.default30.sw.epilog41_crit_edge:               ; preds = %sw.default30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

do.end37:                                         ; preds = %sw.default30
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.89, i32 noundef %cmd) #13
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %do.end37, %sw.default30.sw.epilog41_crit_edge, %do.end44.i, %if.end34.i, %if.end22.i, %if.end11.i65, %sw.bb.i, %if.end27, %do.end25.i, %if.end15.i.sw.epilog41_crit_edge, %if.end11.i.sw.epilog41_crit_edge, %do.end.i, %test_channelmap.exit.i.sw.epilog41_crit_edge, %sw.default.sw.epilog41_crit_edge, %if.end14, %sw.bb10.sw.epilog41_crit_edge, %if.end8, %sw.bb5.sw.epilog41_crit_edge
  %err.0 = phi i32 [ 0, %if.end27 ], [ %call15, %if.end14 ], [ %call9, %if.end8 ], [ -22, %sw.bb5.sw.epilog41_crit_edge ], [ -22, %sw.bb10.sw.epilog41_crit_edge ], [ -22, %do.end37 ], [ -22, %sw.default30.sw.epilog41_crit_edge ], [ -22, %do.end.i ], [ -22, %test_channelmap.exit.i.sw.epilog41_crit_edge ], [ -16, %if.end11.i.sw.epilog41_crit_edge ], [ 0, %do.end25.i ], [ 0, %if.end15.i.sw.epilog41_crit_edge ], [ -22, %sw.default.sw.epilog41_crit_edge ], [ -22, %do.end44.i ], [ 0, %if.end34.i ], [ 0, %if.end22.i ], [ 0, %if.end11.i65 ], [ 0, %sw.bb.i ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_bmsg(ptr noundef %ch, ptr noundef %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %sw.bb
    i32 257, label %sw.bb66
    i32 513, label %sw.bb83
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.119) #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %6)
  %cmp3 = icmp ugt i32 %6, 300
  br i1 %cmp3, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.119) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call14 = tail call ptr @memchr_inv(ptr noundef %8, i32 noundef 255, i32 noundef %6) #10
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end12
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then15.if.end23_crit_edge, label %do.end20

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.119) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.then15.if.end23_crit_edge
  %slot = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  %10 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot, align 4
  %tx_counter = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %11, i32 2
  %12 = ptrtoint ptr %tx_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_counter, align 4
  %add = add i32 %13, %6
  store i32 %add, ptr %tx_counter, align 4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %id, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %15, ptr noundef %skb) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call28 = tail call ptr @memchr_inv(ptr noundef %19, i32 noundef 42, i32 noundef %17) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then30, label %if.end46

if.then30:                                        ; preds = %if.end25
  %20 = load i32, ptr @debug, align 4
  %and31 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then30.if.end39_crit_edge, label %do.end36

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.119) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.then30.if.end39_crit_edge
  %slot41 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  %21 = ptrtoint ptr %slot41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slot41, align 4
  %tx_counter43 = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %22, i32 2
  %23 = ptrtoint ptr %tx_counter43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_counter43, align 4
  %add44 = add i32 %24, %17
  store i32 %add44, ptr %tx_counter43, align 4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %id45 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %id45, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %26, ptr noundef %skb) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end25
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not168 = icmp eq i32 %28, 0
  br i1 %tobool49.not168, label %if.end46.while.end_crit_edge, label %while.body.lr.ph

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end46
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %codec = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 10
  %slot51 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %l.0170 = phi i32 [ %28, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %p.0169 = phi ptr [ %30, %while.body.lr.ph ], [ %add.ptr64, %while.body.while.body_crit_edge ]
  %31 = tail call i32 @llvm.smin.i32(i32 %l.0170, i32 300)
  %32 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %codec, align 4
  %conv = trunc i32 %33 to i8
  %34 = ptrtoint ptr %slot51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slot51, align 4
  %conv52 = trunc i32 %35 to i8
  %tx_counter56 = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %35, i32 2
  %36 = ptrtoint ptr %tx_counter56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_counter56, align 4
  %conv57 = trunc i32 %37 to i16
  tail call fastcc void @l1oip_socket_send(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv52, i16 noundef zeroext %conv57, ptr noundef %p.0169, i32 noundef %31)
  %38 = ptrtoint ptr %slot51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %slot51, align 4
  %tx_counter62 = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %39, i32 2
  %40 = ptrtoint ptr %tx_counter62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_counter62, align 4
  %add63 = add i32 %41, %31
  store i32 %add63, ptr %tx_counter62, align 4
  %add.ptr64 = getelementptr i8, ptr %p.0169, i32 %31
  %sub = sub i32 %l.0170, %31
  %tobool49.not = icmp eq i32 %sub, 0
  br i1 %tobool49.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end46.while.end_crit_edge
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %id65 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %id65, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %43, ptr noundef %skb) #10
  br label %cleanup

sw.bb66:                                          ; preds = %entry
  %44 = load i32, ptr @debug, align 4
  %and67 = and i32 %44, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %sw.bb66.if.end77_crit_edge, label %do.end72

sw.bb66.if.end77_crit_edge:                       ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.end72:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #12
  %slot74 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  %45 = ptrtoint ptr %slot74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slot74, align 4
  %b_num = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %b_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %b_num, align 4
  %add75 = add i32 %48, 1
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.119, i32 noundef %46, i32 noundef %add75) #13
  br label %if.end77

if.end77:                                         ; preds = %do.end72, %sw.bb66.if.end77_crit_edge
  %slot79 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  %49 = ptrtoint ptr %slot79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slot79, align 4
  %codecstate = getelementptr %struct.l1oip, ptr %1, i32 0, i32 27, i32 %50, i32 4
  %51 = ptrtoint ptr %codecstate to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %codecstate, align 4
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call81 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %52 = ptrtoint ptr %id82 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id82, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 258, i32 noundef %53, ptr noundef %skb) #10
  br label %cleanup

sw.bb83:                                          ; preds = %entry
  %54 = load i32, ptr @debug, align 4
  %and84 = and i32 %54, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %sw.bb83.if.end95_crit_edge, label %do.end89

sw.bb83.if.end95_crit_edge:                       ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

do.end89:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  %slot91 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 6
  %55 = ptrtoint ptr %slot91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slot91, align 4
  %b_num92 = getelementptr inbounds %struct.l1oip, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %b_num92 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %b_num92, align 4
  %add93 = add i32 %58, 1
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.119, i32 noundef %56, i32 noundef %add93) #13
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %sw.bb83.if.end95_crit_edge
  %Flags96 = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call97 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags96) #10
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 0) #10
  %id98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %59 = ptrtoint ptr %id98 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %id98, align 1
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 514, i32 noundef %60, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end77, %while.end, %if.end39, %if.end23, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ 0, %if.end77 ], [ 0, %while.end ], [ 0, %if.end39 ], [ 0, %if.end23 ], [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1oip_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 21
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.132, i32 noundef %cmd, ptr noundef %arg) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %cmd, label %do.end9 [
    i32 512, label %sw.bb
    i32 768, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #10
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags) #10
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %peer, align 4
  tail call void @module_put(ptr noundef null) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %5 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p1.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %9, label %do.end5.i [
    i32 0, label %sw.bb.i
    i32 8193, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %arg, align 4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb5
  %12 = load i32, ptr @debug, align 4
  %and.i = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb2.i.if.end.i_crit_edge, label %do.end.i

sw.bb2.i.if.end.i_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb2.i.if.end.i_crit_edge
  %unclocked.i = getelementptr inbounds %struct.dsp_features, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %unclocked.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %unclocked.i, align 4
  %unordered.i = getelementptr inbounds %struct.dsp_features, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %unordered.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %unordered.i, align 4
  br label %sw.epilog

do.end5.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.137, i32 noundef %9) #13
  br label %sw.epilog

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.132, i32 noundef %cmd) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %do.end5.i, %if.end.i, %sw.bb.i, %sw.bb
  %err.0 = phi i32 [ -22, %do.end9 ], [ 0, %sw.bb ], [ -22, %do.end5.i ], [ 0, %if.end.i ], [ 0, %sw.bb.i ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l1oip_socket_open(ptr noundef %hc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @l1oip_socket_close(ptr noundef %hc)
  %socket_complete = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 17
  %0 = ptrtoint ptr %socket_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %socket_complete, align 4
  %wait.i = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  %name = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 2
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @l1oip_socket_thread, ptr noundef %hc, i32 noundef -1, ptr noundef nonnull @.str.140, ptr noundef %name) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end11

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %socket_thread31 = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 18
  %1 = ptrtoint ptr %socket_thread31 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %socket_thread31, align 8
  %2 = ptrtoint ptr %call to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef %2) #13
  %3 = ptrtoint ptr %socket_thread31 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %socket_thread31, align 8
  %socket = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 16
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 4
  tail call void @sock_release(ptr noundef %5) #10
  br label %return

if.end11:                                         ; preds = %entry
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #10
  %socket_thread = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 18
  %6 = ptrtoint ptr %socket_thread to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %socket_thread, align 8
  %7 = load i32, ptr @debug, align 4
  %and = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11.return_crit_edge, label %do.end15

if.end11.return_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142) #13
  br label %return

return:                                           ; preds = %do.end15, %if.end11.return_crit_edge, %if.then5
  %retval.0 = phi i32 [ %2, %if.then5 ], [ 0, %do.end15 ], [ 0, %if.end11.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1oip_keepalive(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %workq = getelementptr i8, ptr %t, i32 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %workq) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l1oip_timeout(ptr nocapture noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr i8, ptr %t, i32 308
  %d_idx = getelementptr i8, ptr %t, i32 -76
  %0 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_idx, align 8
  %arrayidx = getelementptr [128 x %struct.l1oip_chan], ptr %chan, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %timeout_on = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %timeout_on to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %timeout_on, align 4
  %Flags = getelementptr inbounds %struct.dchannel, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %Flags, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.if.end17_crit_edge, label %if.then5

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr @debug, align 4
  %and6 = and i32 %9, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end14_crit_edge, label %do.end11

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.240) #13
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.then5.if.end14_crit_edge
  %call16 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags) #10
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end14.if.end17_crit_edge, label %if.end.i

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %if.end14
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end17_crit_edge, label %if.end3.i, !prof !474

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %15, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 514, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %recv.i, align 4
  %20 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %19(ptr noundef %21, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.end17_crit_edge, label %if.then7.i

if.end3.i.if.end17_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then7.i, %if.end3.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge, %if.end14.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %ondemand = getelementptr i8, ptr %t, i32 -64
  %22 = ptrtoint ptr %ondemand to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ondemand, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool18.not = icmp eq i32 %23, 0
  br i1 %tobool18.not, label %if.end17.if.end29_crit_edge, label %if.then19

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then19:                                        ; preds = %if.end17
  %24 = load i32, ptr @debug, align 4
  %and20 = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then19.if.end28_crit_edge, label %do.end25

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.240) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.then19.if.end28_crit_edge
  %sin_addr = getelementptr i8, ptr %t, i32 232
  %25 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sin_addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end17.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_ch_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_dchannel(ptr noundef %dch, ptr nocapture noundef %rq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %dch, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %2, ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  %protocol4 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 1
  %6 = ptrtoint ptr %protocol4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %protocol4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp10.not = icmp eq i32 %7, %5
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp10.not
  br i1 %or.cond, label %if.end2.if.end24_crit_edge, label %if.then11

if.end2.if.end24_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then11:                                        ; preds = %if.end2
  %8 = load i32, ptr @debug, align 4
  %and12 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end24_crit_edge, label %do.end16

if.then11.if.end24_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %7, i32 noundef %5) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end16, %if.then11.if.end24_crit_edge, %if.end2.if.end24_crit_edge
  %9 = ptrtoint ptr %protocol4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %protocol4, align 8
  %11 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp29.not = icmp eq i32 %10, %12
  br i1 %cmp29.not, label %if.end24.if.end35_crit_edge, label %if.then30

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %protocol4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %protocol4, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end24.if.end35_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %14 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %Flags, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %17 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then38.if.end41_crit_edge, label %if.end.i

if.then38.if.end41_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end.i:                                         ; preds = %if.then38
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end41_crit_edge, label %if.end3.i, !prof !474

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %22, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %25 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %recv.i, align 4
  %27 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %26(ptr noundef %28, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.end41_crit_edge, label %if.then7.i

if.end3.i.if.end41_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then7.i, %if.end3.i.if.end41_crit_edge, %if.end.i.if.end41_crit_edge, %if.then38.if.end41_crit_edge, %if.end35.if.end41_crit_edge
  %ch = getelementptr inbounds %struct.channel_req, ptr %rq, i32 0, i32 2
  %29 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dch, ptr %ch, align 4
  %call44 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %call44, label %if.end41.return_crit_edge, label %do.end47

if.end41.return_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.97) #13
  br label %return

return:                                           ; preds = %do.end47, %if.end41.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.return_crit_edge ], [ 0, %do.end47 ], [ 0, %if.end41.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l1oip_socket_close(ptr noundef %hc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_idx = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 5
  %0 = ptrtoint ptr %d_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d_idx, align 8
  %arrayidx = getelementptr %struct.l1oip, ptr %hc, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %socket_thread = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 18
  %4 = ptrtoint ptr %socket_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket_thread, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %socket_thread to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socket_thread, align 8
  %call5 = tail call i32 @send_sig(i32 noundef 15, ptr noundef %8, i32 noundef 0) #10
  %socket_complete = getelementptr inbounds %struct.l1oip, ptr %hc, i32 0, i32 17
  tail call void @wait_for_completion(ptr noundef %socket_complete) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %Flags, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end6.if.end21_crit_edge, label %if.then9

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %if.end6
  %12 = load i32, ptr @debug, align 4
  %and10 = and i32 %12, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.if.end18_crit_edge, label %do.end15

if.then9.if.end18_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end15:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.147) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then9.if.end18_crit_edge
  %call20 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags) #10
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end18.if.end21_crit_edge, label %if.end.i

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i:                                         ; preds = %if.end18
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end21_crit_edge, label %if.end3.i, !prof !474

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 514, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %recv.i, align 4
  %23 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %22(ptr noundef %24, ptr noundef nonnull %call.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.end21_crit_edge, label %if.then7.i

if.end3.i.if.end21_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then7.i, %if.end3.i.if.end21_crit_edge, %if.end.i.if.end21_crit_edge, %if.end18.if.end21_crit_edge, %if.end6.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l1oip_socket_thread(ptr noundef %data) #1 align 64 {
entry:
  %sin_rx = alloca %struct.sockaddr_in, align 4
  %iov = alloca %struct.kvec, align 4
  %msg = alloca %struct.msghdr, align 8
  %socket = alloca ptr, align 4
  %wait = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin_rx) #10
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sin_rx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin_rx, i32 0, i32 2
  %2 = call ptr @memset(ptr %sin_rx, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #10
  %3 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !475
  %4 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !475
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 48)
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sin_rx, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %msg_namelen, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %socket) #10
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %socket, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait) #10
  %11 = getelementptr inbounds i8, ptr %wait, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 52)
  %13 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.151, ptr noundef nonnull @init_completion.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1500) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153) #13
  br label %fail

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %iov, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1500, ptr %4, align 4
  call void @kernel_sigaction(i32 noundef 15, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  %call3 = call i32 @sock_create(i32 noundef 2, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %socket) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.153) #13
  br label %fail

if.end11:                                         ; preds = %if.end
  %sin_local = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 23
  %17 = ptrtoint ptr %sin_local to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %sin_local, align 8
  %sin_addr = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 23, i32 2
  %18 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sin_addr, align 4
  %localport = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 21
  %19 = ptrtoint ptr %localport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %localport, align 4
  %sin_port = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sin_port, align 2
  %sin_remote = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 24
  %22 = ptrtoint ptr %sin_remote to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %sin_remote, align 8
  %remoteip = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 20
  %23 = ptrtoint ptr %remoteip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %remoteip, align 8
  %sin_addr16 = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 24, i32 2
  %25 = ptrtoint ptr %sin_addr16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sin_addr16, align 4
  %remoteport = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 22
  %26 = ptrtoint ptr %remoteport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %remoteport, align 2
  %sin_port19 = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 24, i32 1
  %28 = ptrtoint ptr %sin_port19 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %sin_port19, align 2
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bind, align 4
  %call21 = call i32 %34(ptr noundef %30, ptr noundef %sin_local, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %localport to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %localport, align 4
  %conv = zext i16 %36 to i32
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.153, i32 noundef %conv) #13
  br label %fail

if.end30:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socket, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sk, align 16
  %cmp = icmp eq ptr %40, null
  br i1 %cmp, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.153) #13
  br label %fail

if.end38:                                         ; preds = %if.end30
  %sendmsg = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 25
  %41 = ptrtoint ptr %sendmsg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sin_remote, ptr %sendmsg, align 8
  %msg_namelen42 = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 25, i32 1
  %42 = ptrtoint ptr %msg_namelen42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %msg_namelen42, align 4
  %43 = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 25, i32 3
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %43, align 8
  %msg_controllen = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 25, i32 5
  %45 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %msg_controllen, align 8
  %socket_lock = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %socket_lock) #10
  %46 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %socket, align 4
  %socket45 = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 16
  %48 = ptrtoint ptr %socket45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %socket45, align 4
  call void @_raw_spin_unlock(ptr noundef %socket_lock) #10
  %49 = load i32, ptr @debug, align 4
  %and = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end38.if.end54_crit_edge, label %do.end51

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.153) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end38.if.end54_crit_edge
  %50 = call i32 @llvm.read_register.i32(metadata !464) #10
  %and.i159 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i159 to ptr
  %task160 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task160 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task160, align 8
  %stack.i.i161 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stack.i.i161 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stack.i.i161, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i162 = icmp eq i32 %58, 0
  br i1 %tobool.not.i162, label %signal_pending.exit.lr.ph, label %if.end54.while.end_crit_edge, !prof !476

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

signal_pending.exit.lr.ph:                        ; preds = %if.end54
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %d_idx.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 5
  %pri.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 4
  %incdec.ptr.i = getelementptr i8, ptr %call7.i, i32 1
  %id104.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 7
  %incdec.ptr81.i = getelementptr i8, ptr %call7.i, i32 2
  %incdec.ptr83.i = getelementptr i8, ptr %call7.i, i32 3
  %incdec.ptr86.i = getelementptr i8, ptr %call7.i, i32 4
  %incdec.ptr90.i = getelementptr i8, ptr %call7.i, i32 5
  %timeout_tl.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 13
  %expires.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 13, i32 1
  %timeout_on.i = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 14
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %if.end71.signal_pending.exit_crit_edge, %signal_pending.exit.lr.ph
  %59 = phi ptr [ %55, %signal_pending.exit.lr.ph ], [ %168, %if.end71.signal_pending.exit_crit_edge ]
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and1.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool57.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool57.not, label %while.body, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %signal_pending.exit
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef 1500) #10
  %62 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %socket, align 4
  %call58 = call i32 @sock_recvmsg(ptr noundef %63, ptr noundef nonnull %msg, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp sgt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %while.body
  %64 = ptrtoint ptr %d_idx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %d_idx.i, align 8
  %arrayidx.i = getelementptr %struct.l1oip, ptr %data, i32 0, i32 27, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %68 = load i32, ptr @debug, align 4
  %and.i138 = and i32 %68, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %if.then61.if.end.i140_crit_edge, label %do.end.i

if.then61.if.end.i140_crit_edge:                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i140

do.end.i:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.176, i32 noundef %call58) #13
  br label %if.end.i140

if.end.i140:                                      ; preds = %do.end.i, %if.then61.if.end.i140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call58)
  %cmp.i = icmp ult i32 %call58, 4
  br i1 %cmp.i, label %do.end5.i, label %if.end8.i

do.end5.i:                                        ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #12
  %call7.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.176, i32 noundef %call58) #13
  br label %if.end71

if.end8.i:                                        ; preds = %if.end.i140
  %69 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %call7.i, align 8
  %conv.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %70)
  %cmp9.not.i = icmp ult i8 %70, 64
  br i1 %cmp9.not.i, label %if.end20.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = lshr i32 %conv.i, 6
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.176, i32 noundef %71) #13
  br label %if.end71

if.end20.i:                                       ; preds = %if.end8.i
  %and22.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %72 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pri.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool24.not.i = icmp eq i32 %73, 0
  br i1 %tobool24.not.i, label %do.end28.i, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end28.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.176) #13
  br label %if.end71

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge
  %74 = and i8 %70, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool34.not.i = icmp eq i8 %74, 0
  br i1 %tobool34.not.i, label %land.lhs.true35.i, label %if.end31.i.if.end44.i_crit_edge

if.end31.i.if.end44.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

land.lhs.true35.i:                                ; preds = %if.end31.i
  %75 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pri.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool37.not.i = icmp eq i32 %76, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.if.end44.i_crit_edge, label %do.end41.i

land.lhs.true35.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

do.end41.i:                                       ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.176) #13
  br label %if.end71

if.end44.i:                                       ; preds = %land.lhs.true35.i.if.end44.i_crit_edge, %if.end31.i.if.end44.i_crit_edge
  %and49.i = and i8 %70, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and49.i)
  %cmp52.i = icmp ugt i8 %and49.i, 3
  br i1 %cmp52.i, label %do.end57.i, label %if.end61.i

do.end57.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv51.i = zext i8 %and49.i to i32
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.176, i32 noundef %conv51.i) #13
  br label %if.end71

if.end61.i:                                       ; preds = %if.end44.i
  %dec.i = add nsw i32 %call58, -1
  %77 = and i8 %70, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool62.not.i = icmp eq i8 %77, 0
  %78 = ptrtoint ptr %id104.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id104.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool105.not.i = icmp eq i32 %79, 0
  br i1 %tobool62.not.i, label %if.else.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end61.i
  br i1 %tobool105.not.i, label %do.end68.i, label %if.end71.i

do.end68.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #12
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.176, i32 noundef 1) #13
  br label %if.end71

if.end71.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec.i)
  %cmp72.i = icmp ult i32 %dec.i, 4
  br i1 %cmp72.i, label %do.end77.i, label %if.end80.i

do.end77.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.176) #13
  br label %if.end71

if.end80.i:                                       ; preds = %if.end71.i
  %80 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.i, align 1
  %conv82.i = zext i8 %81 to i32
  %shl.i = shl nuw i32 %conv82.i, 24
  %82 = ptrtoint ptr %incdec.ptr81.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr81.i, align 2
  %conv84.i = zext i8 %83 to i32
  %shl85.i = shl nuw nsw i32 %conv84.i, 16
  %add.i = or i32 %shl85.i, %shl.i
  %84 = ptrtoint ptr %incdec.ptr83.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr83.i, align 1
  %conv87.i = zext i8 %85 to i32
  %shl88.i = shl nuw nsw i32 %conv87.i, 8
  %add89.i = or i32 %add.i, %shl88.i
  %86 = ptrtoint ptr %incdec.ptr86.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr86.i, align 4
  %conv91.i = zext i8 %87 to i32
  %add92.i = or i32 %add89.i, %conv91.i
  %sub.i = add nsw i32 %call58, -5
  call void @__sanitizer_cov_trace_cmp4(i32 %add92.i, i32 %79)
  %cmp94.not.i = icmp eq i32 %add92.i, %79
  br i1 %cmp94.not.i, label %if.end80.i.if.end113.i_crit_edge, label %do.end99.i

if.end80.i.if.end113.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

do.end99.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #12
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.176, i32 noundef %add92.i, i32 noundef %79) #13
  br label %if.end71

if.else.i:                                        ; preds = %if.end61.i
  br i1 %tobool105.not.i, label %if.else.i.if.end113.i_crit_edge, label %do.end109.i

if.else.i.if.end113.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113.i

do.end109.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.176) #13
  br label %if.end71

if.end113.i:                                      ; preds = %if.else.i.if.end113.i_crit_edge, %if.end80.i.if.end113.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub.i, %if.end80.i.if.end113.i_crit_edge ], [ %dec.i, %if.else.i.if.end113.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %incdec.ptr90.i, %if.end80.i.if.end113.i_crit_edge ], [ %incdec.ptr.i, %if.else.i.if.end113.i_crit_edge ]
  %Flags.i = getelementptr inbounds %struct.dchannel, ptr %67, i32 0, i32 1
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %67, i32 0, i32 6
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %67, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and49.i)
  %cmp41.i.i = icmp eq i8 %and49.i, 3
  %shl.i.i = zext i1 %cmp41.i.i to i32
  %trunc.i = trunc i8 %70 to i4
  br label %multiframe.i

multiframe.i:                                     ; preds = %l1oip_socket_recv.exit.i.multiframe.i_crit_edge, %if.end113.i
  %len.addr.1.i = phi i32 [ %len.addr.0.i, %if.end113.i ], [ %sub214.i, %l1oip_socket_recv.exit.i.multiframe.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %buf.addr.0.i, %if.end113.i ], [ %add.ptr.i, %l1oip_socket_recv.exit.i.multiframe.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.1.i)
  %cmp114.i = icmp slt i32 %len.addr.1.i, 1
  br i1 %cmp114.i, label %do.end119.i, label %if.end124.i

do.end119.i:                                      ; preds = %multiframe.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub121.i = sub i32 1, %call58
  %add122.i = add i32 %sub121.i, %len.addr.1.i
  %call123.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.176, i32 noundef %add122.i) #13
  br label %if.end71

if.end124.i:                                      ; preds = %multiframe.i
  %88 = ptrtoint ptr %buf.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %buf.addr.1.i, align 1
  %and126.i = and i8 %89, 127
  %incdec.ptr130.i = getelementptr i8, ptr %buf.addr.1.i, i32 1
  %dec131.i = add nsw i32 %len.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %tobool132.not.i = icmp sgt i8 %89, -1
  br i1 %tobool132.not.i, label %if.else176.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec131.i)
  %cmp134.i = icmp eq i32 %dec131.i, 0
  br i1 %cmp134.i, label %do.end139.i, label %if.end144.i

do.end139.i:                                      ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #12
  %call143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.176, i32 noundef %dec.i) #13
  br label %if.end71

if.end144.i:                                      ; preds = %if.then133.i
  %90 = ptrtoint ptr %incdec.ptr130.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %incdec.ptr130.i, align 1
  %conv146.i = zext i8 %91 to i32
  %dec147.i = add i32 %len.addr.1.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp148.i = icmp eq i8 %91, 0
  %spec.store.select.i = select i1 %cmp148.i, i32 256, i32 %conv146.i
  %add152.i = add nuw nsw i32 %spec.store.select.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %dec147.i, i32 %add152.i)
  %cmp153.i = icmp ult i32 %dec147.i, %add152.i
  br i1 %cmp153.i, label %do.end158.i, label %if.end163.i

do.end158.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = add i32 %call58, 1
  %sub161.i = sub i32 %92, %len.addr.1.i
  %call162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.176, i32 noundef %spec.store.select.i, i32 noundef %sub161.i, i32 noundef %call58) #13
  br label %if.end71

if.end163.i:                                      ; preds = %if.end144.i
  %incdec.ptr145.i = getelementptr i8, ptr %buf.addr.1.i, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec147.i, i32 %add152.i)
  %cmp165.i = icmp eq i32 %dec147.i, %add152.i
  br i1 %cmp165.i, label %do.end170.i, label %if.end163.i.if.end178.i_crit_edge

if.end163.i.if.end178.i_crit_edge:                ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178.i

do.end170.i:                                      ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = add i32 %call58, 3
  %add173.i = sub i32 %93, %len.addr.1.i
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.176, i32 noundef %spec.store.select.i, i32 noundef %add173.i) #13
  br label %if.end71

if.else176.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub177.i = add i32 %len.addr.1.i, -3
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.else176.i, %if.end163.i.if.end178.i_crit_edge
  %mlen.0.i = phi i32 [ %spec.store.select.i, %if.end163.i.if.end178.i_crit_edge ], [ %sub177.i, %if.else176.i ]
  %len.addr.2.i = phi i32 [ %dec147.i, %if.end163.i.if.end178.i_crit_edge ], [ %dec131.i, %if.else176.i ]
  %buf.addr.2.i = phi ptr [ %incdec.ptr145.i, %if.end163.i.if.end178.i_crit_edge ], [ %incdec.ptr130.i, %if.else176.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.2.i)
  %cmp179.i = icmp slt i32 %len.addr.2.i, 2
  br i1 %cmp179.i, label %do.end184.i, label %if.end189.i

do.end184.i:                                      ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub186.i = sub i32 1, %call58
  %add187.i = add i32 %sub186.i, %len.addr.2.i
  %call188.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.176, i32 noundef %add187.i) #13
  br label %if.end71

if.end189.i:                                      ; preds = %if.end178.i
  %incdec.ptr190.i = getelementptr i8, ptr %buf.addr.2.i, i32 1
  %94 = ptrtoint ptr %buf.addr.2.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %buf.addr.2.i, align 1
  %conv191.i = zext i8 %95 to i16
  %shl192.i = shl nuw i16 %conv191.i, 8
  %incdec.ptr194.i = getelementptr i8, ptr %buf.addr.2.i, i32 2
  %96 = ptrtoint ptr %incdec.ptr190.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %incdec.ptr190.i, align 1
  %conv195.i = zext i8 %97 to i16
  %or.i = or i16 %shl192.i, %conv195.i
  %98 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %Flags.i, align 4
  %100 = and i32 %99, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool200.not.i = icmp eq i32 %100, 0
  br i1 %tobool200.not.i, label %if.then201.i, label %if.end189.i.if.end213.i_crit_edge

if.end189.i.if.end213.i_crit_edge:                ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

if.then201.i:                                     ; preds = %if.end189.i
  %101 = load i32, ptr @debug, align 4
  %and202.i = and i32 %101, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202.i)
  %tobool203.not.i = icmp eq i32 %and202.i, 0
  br i1 %tobool203.not.i, label %if.then201.i.if.end210.i_crit_edge, label %do.end207.i

if.then201.i.if.end210.i_crit_edge:               ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210.i

do.end207.i:                                      ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #12
  %call209.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.176) #13
  br label %if.end210.i

if.end210.i:                                      ; preds = %do.end207.i, %if.then201.i.if.end210.i_crit_edge
  %call212.i = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags.i) #10
  %102 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i, label %if.end210.i.if.end213.i_crit_edge, label %if.end.i.i

if.end210.i.if.end213.i_crit_edge:                ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

if.end.i.i:                                       ; preds = %if.end210.i
  %call.i.i.i.i.i = call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end213.i_crit_edge, label %if.end3.i.i, !prof !474

if.end.i.i.if.end213.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %104 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %105, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %106 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %107, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 258, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %109 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %110 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %recv.i.i, align 4
  %112 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = call i32 %111(ptr noundef %113, ptr noundef nonnull %call.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end213.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end213.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #10
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.then7.i.i, %if.end3.i.i.if.end213.i_crit_edge, %if.end.i.i.if.end213.i_crit_edge, %if.end210.i.if.end213.i_crit_edge, %if.end189.i.if.end213.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mlen.0.i)
  %cmp.i.i = icmp eq i32 %mlen.0.i, 0
  %114 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %114, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i367.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end2.i.i

if.then.i.i:                                      ; preds = %if.end213.i
  br i1 %tobool.not.i367.i, label %if.then.i.i.l1oip_socket_recv.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.l1oip_socket_recv.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l1oip_socket_recv.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226) #13
  br label %l1oip_socket_recv.exit.i

if.end2.i.i:                                      ; preds = %if.end213.i
  br i1 %tobool.not.i367.i, label %if.end2.i.i.if.end11.i.i_crit_edge, label %do.end8.i.i

if.end2.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

do.end8.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.226, i32 noundef %mlen.0.i) #13
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end8.i.i, %if.end2.i.i.if.end11.i.i_crit_edge
  %conv.i.i = zext i8 %and126.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and126.i)
  %cmp12.i.i = icmp eq i8 %and126.i, 0
  br i1 %cmp12.i.i, label %do.end20.i.i, label %if.end24.i.i

do.end20.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.226, i32 noundef %conv.i.i) #13
  br label %l1oip_socket_recv.exit.i

if.end24.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx.i.i = getelementptr %struct.l1oip, ptr %data, i32 0, i32 27, i32 %conv.i.i
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i, align 4
  %bch29.i.i = getelementptr %struct.l1oip, ptr %data, i32 0, i32 27, i32 %conv.i.i, i32 1
  %117 = ptrtoint ptr %bch29.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bch29.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %116, null
  %tobool31.not.i.i = icmp eq ptr %118, null
  %or.cond.i.i = select i1 %tobool30.not.i.i, i1 %tobool31.not.i.i, i1 false
  br i1 %or.cond.i.i, label %do.end35.i.i, label %if.end39.i.i

do.end35.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.226, i32 noundef %conv.i.i) #13
  br label %l1oip_socket_recv.exit.i

if.end39.i.i:                                     ; preds = %if.end24.i.i
  %cond.i.i = shl i32 %mlen.0.i, %shl.i.i
  %add.i.i.i = add i32 %cond.i.i, 8
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end48.i.i, label %if.end51.i.i, !prof !474

do.end48.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call50.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.226) #13
  br label %l1oip_socket_recv.exit.i

if.end51.i.i:                                     ; preds = %if.end39.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %119 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %120, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %121 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %122, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %call60.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %cond.i.i) #10
  %123 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.254)
  switch i4 %trunc.i, label %if.end51.i.i.if.else75.i.i_crit_edge [
    i4 1, label %land.lhs.true64.i.i
    i4 2, label %land.lhs.true71.i.i
  ]

if.end51.i.i.if.else75.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else75.i.i

land.lhs.true64.i.i:                              ; preds = %if.end51.i.i
  %124 = load i32, ptr @ulaw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool65.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool65.not.i.i, label %land.lhs.true64.i.i.if.else75.i.i_crit_edge, label %if.then66.i.i

land.lhs.true64.i.i.if.else75.i.i_crit_edge:      ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else75.i.i

if.then66.i.i:                                    ; preds = %land.lhs.true64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call67.i.i = call i32 @l1oip_alaw_to_ulaw(ptr noundef %incdec.ptr194.i, i32 noundef %mlen.0.i, ptr noundef %call60.i.i) #10
  br label %if.end84.i.i

land.lhs.true71.i.i:                              ; preds = %if.end51.i.i
  %125 = load i32, ptr @ulaw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool72.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool72.not.i.i, label %if.then73.i.i, label %land.lhs.true71.i.i.if.else75.i.i_crit_edge

land.lhs.true71.i.i.if.else75.i.i_crit_edge:      ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else75.i.i

if.then73.i.i:                                    ; preds = %land.lhs.true71.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call74.i.i = call i32 @l1oip_ulaw_to_alaw(ptr noundef %incdec.ptr194.i, i32 noundef %mlen.0.i, ptr noundef %call60.i.i) #10
  br label %if.end84.i.i

if.else75.i.i:                                    ; preds = %land.lhs.true71.i.i.if.else75.i.i_crit_edge, %land.lhs.true64.i.i.if.else75.i.i_crit_edge, %if.end51.i.i.if.else75.i.i_crit_edge
  br i1 %cmp41.i.i, label %if.then79.i.i, label %if.else81.i.i

if.then79.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call80.i.i = call i32 @l1oip_4bit_to_law(ptr noundef %incdec.ptr194.i, i32 noundef %mlen.0.i, ptr noundef %call60.i.i) #10
  br label %if.end84.i.i

if.else81.i.i:                                    ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = call ptr @memcpy(ptr %call60.i.i, ptr %incdec.ptr194.i, i32 %mlen.0.i)
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.else81.i.i, %if.then79.i.i, %if.then73.i.i, %if.then66.i.i
  %len.addr.0.i.i = phi i32 [ %mlen.0.i, %if.then66.i.i ], [ %call80.i.i, %if.then79.i.i ], [ %mlen.0.i, %if.else81.i.i ], [ %mlen.0.i, %if.then73.i.i ]
  %tobool30.not.not.i.i = xor i1 %tobool30.not.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.i.i)
  %cmp87.i.i = icmp sgt i32 %len.addr.0.i.i, 1
  %or.cond193.i.i = select i1 %tobool30.not.not.i.i, i1 %cmp87.i.i, i1 false
  br i1 %or.cond193.i.i, label %if.then89.i.i, label %if.end84.i.i.if.end90.i.i_crit_edge

if.end84.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.i.i

if.then89.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_skb.i.i = getelementptr inbounds %struct.dchannel, ptr %116, i32 0, i32 9
  %127 = ptrtoint ptr %rx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i.i.i.i, ptr %rx_skb.i.i, align 4
  call void @recv_Dchannel(ptr noundef nonnull %116) #10
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.then89.i.i, %if.end84.i.i.if.end90.i.i_crit_edge
  br i1 %tobool31.not.i.i, label %if.end90.i.i.l1oip_socket_recv.exit.i_crit_edge, label %if.then92.i.i

if.end90.i.i.l1oip_socket_recv.exit.i_crit_edge:  ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %l1oip_socket_recv.exit.i

if.then92.i.i:                                    ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_counter96.i.i = getelementptr %struct.l1oip, ptr %data, i32 0, i32 27, i32 %conv.i.i, i32 3
  %128 = ptrtoint ptr %rx_counter96.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_counter96.i.i, align 4
  %conv97.i.i = zext i16 %or.i to i32
  %130 = trunc i32 %129 to i16
  %conv98.i.i = sub i16 %or.i, %130
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv98.i.i)
  %cmp100.i.i = icmp sgt i16 %conv98.i.i, -1
  %and104.i.i = and i32 %129, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and104.i.i, i32 %conv97.i.i)
  %cmp105.not.i.i = icmp ugt i32 %and104.i.i, %conv97.i.i
  %131 = add i32 %129, -65536
  %132 = add i32 %129, 65536
  %.sink195.i.i = select i1 %cmp100.i.i, i32 %129, i32 %131
  %.sink.i.i = select i1 %cmp100.i.i, i32 %132, i32 %129
  %spec.select194.i.i = select i1 %cmp105.not.i.i, i32 %.sink.i.i, i32 %.sink195.i.i
  %and108.pn.i.i = and i32 %spec.select194.i.i, -65536
  %rx_counter.0.i.i = or i32 %and108.pn.i.i, %conv97.i.i
  %133 = ptrtoint ptr %rx_counter96.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %rx_counter.0.i.i, ptr %rx_counter96.i.i, align 4
  call void @queue_ch_frame(ptr noundef nonnull %118, i32 noundef 8194, i32 noundef %rx_counter.0.i.i, ptr noundef nonnull %call.i.i.i.i) #10
  br label %l1oip_socket_recv.exit.i

l1oip_socket_recv.exit.i:                         ; preds = %if.then92.i.i, %if.end90.i.i.l1oip_socket_recv.exit.i_crit_edge, %do.end48.i.i, %do.end35.i.i, %do.end20.i.i, %do.end.i.i, %if.then.i.i.l1oip_socket_recv.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr194.i, i32 %mlen.0.i
  %sub198.i = sub i32 -2, %mlen.0.i
  %sub214.i = add i32 %sub198.i, %len.addr.2.i
  br i1 %tobool132.not.i, label %if.end217.i, label %l1oip_socket_recv.exit.i.multiframe.i_crit_edge

l1oip_socket_recv.exit.i.multiframe.i_crit_edge:  ; preds = %l1oip_socket_recv.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %multiframe.i

if.end217.i:                                      ; preds = %l1oip_socket_recv.exit.i
  %134 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %expires.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %136 = load volatile i32, ptr @jiffies, align 128
  %add218.neg.i = add i32 %135, -500
  %sub219.i = sub i32 %add218.neg.i, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub219.i)
  %cmp220.i = icmp slt i32 %sub219.i, 0
  br i1 %cmp220.i, label %if.end217.i.if.then223.i_crit_edge, label %lor.lhs.false.i

if.end217.i.if.then223.i_crit_edge:               ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

lor.lhs.false.i:                                  ; preds = %if.end217.i
  %137 = ptrtoint ptr %timeout_on.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %timeout_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool222.not.i = icmp eq i32 %138, 0
  br i1 %tobool222.not.i, label %lor.lhs.false.i.if.then223.i_crit_edge, label %if.else228.i

lor.lhs.false.i.if.then223.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then223.i

if.then223.i:                                     ; preds = %lor.lhs.false.i.if.then223.i_crit_edge, %if.end217.i.if.then223.i_crit_edge
  %139 = ptrtoint ptr %timeout_on.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %timeout_on.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %add226.i = add i32 %140, 6500
  %call227.i = call i32 @mod_timer(ptr noundef %timeout_tl.i, i32 noundef %add226.i) #10
  br label %if.end232.i

if.else228.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %141 = load volatile i32, ptr @jiffies, align 128
  %add229.i = add i32 %141, 6500
  %142 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add229.i, ptr %expires.i, align 4
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.else228.i, %if.then223.i
  %143 = ptrtoint ptr %sin_addr16 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %sin_addr16, align 4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp235.not.i = icmp eq i32 %144, %146
  br i1 %cmp235.not.i, label %lor.lhs.false237.i, label %if.end232.i.if.then244.i_crit_edge

if.end232.i.if.then244.i_crit_edge:               ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then244.i

lor.lhs.false237.i:                               ; preds = %if.end232.i
  %147 = ptrtoint ptr %sin_port19 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %sin_port19, align 2
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %150)
  %cmp242.not.i = icmp eq i16 %148, %150
  br i1 %cmp242.not.i, label %lor.lhs.false237.i.if.end71_crit_edge, label %lor.lhs.false237.i.if.then244.i_crit_edge

lor.lhs.false237.i.if.then244.i_crit_edge:        ; preds = %lor.lhs.false237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then244.i

lor.lhs.false237.i.if.end71_crit_edge:            ; preds = %lor.lhs.false237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then244.i:                                     ; preds = %lor.lhs.false237.i.if.then244.i_crit_edge, %if.end232.i.if.then244.i_crit_edge
  %151 = load i32, ptr @debug, align 4
  %and245.i = and i32 %151, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245.i)
  %tobool246.not.i = icmp eq i32 %and245.i, 0
  br i1 %tobool246.not.i, label %if.then244.i.if.end263.i_crit_edge, label %do.end250.i

if.then244.i.if.end263.i_crit_edge:               ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end263.i

do.end250.i:                                      ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %sin_port19 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %sin_port19, align 2
  %conv259.i = zext i16 %153 to i32
  %154 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %0, align 2
  %conv261.i = zext i16 %155 to i32
  %call262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.176, i32 noundef %144, i32 noundef %146, i32 noundef %conv259.i, i32 noundef %conv261.i) #13
  br label %if.end263.i

if.end263.i:                                      ; preds = %do.end250.i, %if.then244.i.if.end263.i_crit_edge
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %1, align 4
  %158 = ptrtoint ptr %sin_addr16 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %sin_addr16, align 4
  %159 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %0, align 2
  %161 = ptrtoint ptr %sin_port19 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %sin_port19, align 2
  br label %if.end71

if.else:                                          ; preds = %while.body
  %162 = load i32, ptr @debug, align 4
  %and62 = and i32 %162, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else.if.end71_crit_edge, label %do.end67

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.153) #13
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %if.else.if.end71_crit_edge, %if.end263.i, %lor.lhs.false237.i.if.end71_crit_edge, %do.end184.i, %do.end170.i, %do.end158.i, %do.end139.i, %do.end119.i, %do.end109.i, %do.end99.i, %do.end77.i, %do.end68.i, %do.end57.i, %do.end41.i, %do.end28.i, %do.end14.i, %do.end5.i
  %163 = call i32 @llvm.read_register.i32(metadata !464) #10
  %and.i = and i32 %163, -16384
  %164 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %stack.i.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %168, align 4
  %171 = and i32 %170, 256
  %tobool.not.i = icmp eq i32 %171, 0
  br i1 %tobool.not.i, label %if.end71.signal_pending.exit_crit_edge, label %if.end71.while.end_crit_edge, !prof !476

if.end71.while.end_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end71.signal_pending.exit_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %signal_pending.exit

while.end:                                        ; preds = %if.end71.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end54.while.end_crit_edge
  call void @_raw_spin_lock(ptr noundef %socket_lock) #10
  %172 = ptrtoint ptr %socket45 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %socket45, align 4
  %tobool75.not163 = icmp eq ptr %173, null
  br i1 %tobool75.not163, label %while.end.while.body77_crit_edge, label %while.end.while.end81_crit_edge

while.end.while.end81_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end81

while.end.while.body77_crit_edge:                 ; preds = %while.end
  br label %while.body77

while.body77:                                     ; preds = %while.body77.while.body77_crit_edge, %while.end.while.body77_crit_edge
  call void @_raw_spin_unlock(ptr noundef %socket_lock) #10
  %call79 = call i32 @schedule_timeout(i32 noundef 10) #10
  call void @_raw_spin_lock(ptr noundef %socket_lock) #10
  %174 = ptrtoint ptr %socket45 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %socket45, align 4
  %tobool75.not = icmp eq ptr %175, null
  br i1 %tobool75.not, label %while.body77.while.body77_crit_edge, label %while.body77.while.end81_crit_edge

while.body77.while.end81_crit_edge:               ; preds = %while.body77
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end81

while.body77.while.body77_crit_edge:              ; preds = %while.body77
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body77

while.end81:                                      ; preds = %while.body77.while.end81_crit_edge, %while.end.while.end81_crit_edge
  %176 = ptrtoint ptr %socket45 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %socket45, align 4
  call void @_raw_spin_unlock(ptr noundef %socket_lock) #10
  %177 = load i32, ptr @debug, align 4
  %and84 = and i32 %177, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %while.end81.fail_crit_edge, label %do.end89

while.end81.fail_crit_edge:                       ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end89:                                         ; preds = %while.end81
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.153) #13
  br label %fail

fail:                                             ; preds = %do.end89, %while.end81.fail_crit_edge, %do.end35, %do.end26, %do.end8, %do.end
  %ret.0 = phi i32 [ -5, %do.end8 ], [ -22, %do.end26 ], [ -5, %do.end35 ], [ 0, %do.end89 ], [ 0, %while.end81.fail_crit_edge ], [ -12, %do.end ]
  call void @kfree(ptr noundef %call7.i) #10
  %178 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %socket, align 4
  %tobool93.not = icmp eq ptr %179, null
  br i1 %tobool93.not, label %fail.if.end95_crit_edge, label %if.then94

fail.if.end95_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

if.then94:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  call void @sock_release(ptr noundef nonnull %179) #10
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %fail.if.end95_crit_edge
  %socket_complete = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 17
  call void @complete(ptr noundef %socket_complete) #10
  %socket_thread = getelementptr inbounds %struct.l1oip, ptr %data, i32 0, i32 18
  %180 = ptrtoint ptr %socket_thread to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %socket_thread, align 8
  %181 = load i32, ptr @debug, align 4
  %and96 = and i32 %181, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end104_crit_edge, label %do.end101

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.end101:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.153) #13
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end95.if.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %socket) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin_rx) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1oip_4bit_to_law(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Dchannel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @l1oip_4bit_free() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_freedchannel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !141, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !305, !306, !308, !310, !311, !312, !313, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !331, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !457, !459, !460, !462, !463}
!llvm.named.register.sp = !{!464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471, !472}
!llvm.ident = !{!473}

!0 = !{ptr @__UNIQUE_ID_author457, !1, !"__UNIQUE_ID_author457", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 247, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 248, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__param_type, !6, !"__param_type", i1 false, i1 false}
!6 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 249, i32 1}
!7 = !{ptr @__UNIQUE_ID_typetype460, !6, !"__UNIQUE_ID_typetype460", i1 false, i1 false}
!8 = !{ptr @__param_codec, !9, !"__param_codec", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 250, i32 1}
!10 = !{ptr @__UNIQUE_ID_codectype461, !9, !"__UNIQUE_ID_codectype461", i1 false, i1 false}
!11 = !{ptr @__param_ip, !12, !"__param_ip", i1 false, i1 false}
!12 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 251, i32 1}
!13 = !{ptr @__UNIQUE_ID_iptype462, !12, !"__UNIQUE_ID_iptype462", i1 false, i1 false}
!14 = !{ptr @__param_port, !15, !"__param_port", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 252, i32 1}
!16 = !{ptr @__UNIQUE_ID_porttype463, !15, !"__UNIQUE_ID_porttype463", i1 false, i1 false}
!17 = !{ptr @__param_remoteport, !18, !"__param_remoteport", i1 false, i1 false}
!18 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 253, i32 1}
!19 = !{ptr @__UNIQUE_ID_remoteporttype464, !18, !"__UNIQUE_ID_remoteporttype464", i1 false, i1 false}
!20 = !{ptr @__param_ondemand, !21, !"__param_ondemand", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 254, i32 1}
!22 = !{ptr @__UNIQUE_ID_ondemandtype465, !21, !"__UNIQUE_ID_ondemandtype465", i1 false, i1 false}
!23 = !{ptr @__param_limit, !24, !"__param_limit", i1 false, i1 false}
!24 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 255, i32 1}
!25 = !{ptr @__UNIQUE_ID_limittype466, !24, !"__UNIQUE_ID_limittype466", i1 false, i1 false}
!26 = !{ptr @__param_id, !27, !"__param_id", i1 false, i1 false}
!27 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 256, i32 1}
!28 = !{ptr @__UNIQUE_ID_idtype467, !27, !"__UNIQUE_ID_idtype467", i1 false, i1 false}
!29 = !{ptr @__param_ulaw, !30, !"__param_ulaw", i1 false, i1 false}
!30 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 257, i32 1}
!31 = !{ptr @__UNIQUE_ID_ulawtype468, !30, !"__UNIQUE_ID_ulawtype468", i1 false, i1 false}
!32 = !{ptr @__param_debug, !33, !"__param_debug", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 258, i32 1}
!34 = !{ptr @__UNIQUE_ID_debugtype469, !33, !"__UNIQUE_ID_debugtype469", i1 false, i1 false}
!35 = !{ptr @__initcall__kmod_l1oip__470_1502_l1oip_init6, !36, !"__initcall__kmod_l1oip__470_1502_l1oip_init6", i1 false, i1 false}
!36 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1502, i32 1}
!37 = !{ptr @__exitcall_l1oip_cleanup, !38, !"__exitcall_l1oip_cleanup", i1 false, i1 false}
!38 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1503, i32 1}
!39 = !{ptr @debug, !40, !"debug", i1 false, i1 false}
!40 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 244, i32 12}
!41 = !{ptr @ulaw, !42, !"ulaw", i1 false, i1 false}
!42 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 245, i32 12}
!43 = !{ptr @__param_str_type, !6, !"__param_str_type", i1 false, i1 false}
!44 = !{ptr @__param_arr_type, !6, !"__param_arr_type", i1 false, i1 false}
!45 = !{ptr @type, !46, !"type", i1 false, i1 false}
!46 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 236, i32 14}
!47 = !{ptr @__param_str_codec, !9, !"__param_str_codec", i1 false, i1 false}
!48 = !{ptr @__param_arr_codec, !9, !"__param_arr_codec", i1 false, i1 false}
!49 = !{ptr @codec, !50, !"codec", i1 false, i1 false}
!50 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 237, i32 14}
!51 = !{ptr @__param_str_ip, !12, !"__param_str_ip", i1 false, i1 false}
!52 = !{ptr @__param_arr_ip, !12, !"__param_arr_ip", i1 false, i1 false}
!53 = !{ptr @ip, !54, !"ip", i1 false, i1 false}
!54 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 238, i32 14}
!55 = !{ptr @__param_str_port, !15, !"__param_str_port", i1 false, i1 false}
!56 = !{ptr @__param_arr_port, !15, !"__param_arr_port", i1 false, i1 false}
!57 = !{ptr @port, !58, !"port", i1 false, i1 false}
!58 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 239, i32 14}
!59 = !{ptr @__param_str_remoteport, !18, !"__param_str_remoteport", i1 false, i1 false}
!60 = !{ptr @__param_arr_remoteport, !18, !"__param_arr_remoteport", i1 false, i1 false}
!61 = !{ptr @remoteport, !62, !"remoteport", i1 false, i1 false}
!62 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 240, i32 14}
!63 = !{ptr @__param_str_ondemand, !21, !"__param_str_ondemand", i1 false, i1 false}
!64 = !{ptr @__param_arr_ondemand, !21, !"__param_arr_ondemand", i1 false, i1 false}
!65 = !{ptr @ondemand, !66, !"ondemand", i1 false, i1 false}
!66 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 241, i32 14}
!67 = !{ptr @__param_str_limit, !24, !"__param_str_limit", i1 false, i1 false}
!68 = !{ptr @__param_arr_limit, !24, !"__param_arr_limit", i1 false, i1 false}
!69 = !{ptr @limit, !70, !"limit", i1 false, i1 false}
!70 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 242, i32 14}
!71 = !{ptr @__param_str_id, !27, !"__param_str_id", i1 false, i1 false}
!72 = !{ptr @__param_arr_id, !27, !"__param_arr_id", i1 false, i1 false}
!73 = !{ptr @id, !74, !"id", i1 false, i1 false}
!74 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 243, i32 14}
!75 = !{ptr @__param_str_ulaw, !30, !"__param_str_ulaw", i1 false, i1 false}
!76 = !{ptr @__param_str_debug, !33, !"__param_str_debug", i1 false, i1 false}
!77 = !{ptr @.str, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1440, i32 2}
!79 = !{ptr @.str.1, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.2, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @l1oip_init._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @l1oip_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.4, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1466, i32 4}
!85 = !{ptr @l1oip_init._entry.3, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @l1oip_init._entry_ptr.5, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.7, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1473, i32 4}
!89 = !{ptr @l1oip_init._entry.6, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @l1oip_init._entry_ptr.8, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.9, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.10, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.14, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1480, i32 4}
!97 = !{ptr @l1oip_init._entry.13, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @l1oip_init._entry_ptr.15, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @l1oip_init.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1484, i32 3}
!101 = !{ptr @.str.16, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.18, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1498, i32 2}
!104 = !{ptr @l1oip_init._entry.17, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @l1oip_init._entry_ptr.19, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 229, i32 37}
!108 = distinct !{null, !109, !"l1oip_revision", i1 false, i1 false}
!109 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 229, i32 20}
!110 = !{ptr @l1oip_cnt, !111, !"l1oip_cnt", i1 false, i1 false}
!111 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 231, i32 12}
!112 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 808, i32 3}
!114 = !{ptr @.str.22, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @l1oip_send_bh._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @l1oip_send_bh._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.23, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 272, i32 3}
!119 = !{ptr @.str.24, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @l1oip_socket_send._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @l1oip_socket_send._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 284, i32 3}
!124 = !{ptr @l1oip_socket_send._entry.25, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @l1oip_socket_send._entry_ptr.27, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 289, i32 4}
!128 = !{ptr @l1oip_socket_send._entry.28, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @l1oip_socket_send._entry_ptr.30, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 334, i32 3}
!132 = !{ptr @l1oip_socket_send._entry.31, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @l1oip_socket_send._entry_ptr.33, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 232, i32 8}
!136 = !{ptr @l1oip_lock, !135, !"l1oip_lock", i1 false, i1 false}
!137 = !{ptr @l1oip_ilist, !138, !"l1oip_ilist", i1 false, i1 false}
!138 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 233, i32 8}
!139 = !{ptr @init_card.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1292, i32 2}
!141 = !{ptr @.str.35, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1299, i32 21}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1301, i32 21}
!146 = !{ptr @.str.38, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1310, i32 3}
!148 = !{ptr @.str.39, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @init_card._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @init_card._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.41, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1316, i32 3}
!153 = !{ptr @init_card._entry.40, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @init_card._entry_ptr.42, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1320, i32 3}
!157 = !{ptr @init_card._entry.43, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @init_card._entry_ptr.45, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.47, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1326, i32 3}
!161 = !{ptr @init_card._entry.46, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @init_card._entry_ptr.48, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1330, i32 3}
!165 = !{ptr @init_card._entry.49, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @init_card._entry_ptr.51, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.53, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1338, i32 3}
!169 = !{ptr @init_card._entry.52, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @init_card._entry_ptr.54, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.56, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1343, i32 3}
!173 = !{ptr @init_card._entry.55, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @init_card._entry_ptr.57, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1348, i32 3}
!177 = !{ptr @init_card._entry.58, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @init_card._entry_ptr.60, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1350, i32 3}
!181 = !{ptr @init_card._entry.61, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @init_card._entry_ptr.63, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.65, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1364, i32 3}
!185 = !{ptr @init_card._entry.64, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @init_card._entry_ptr.66, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1394, i32 4}
!189 = !{ptr @init_card._entry.67, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @init_card._entry_ptr.69, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1417, i32 3}
!193 = !{ptr @init_card._entry.70, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @init_card._entry_ptr.72, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @init_card.__key.73, !196, !"__key", i1 false, i1 false}
!196 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1423, i32 2}
!197 = !{ptr @.str.74, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @init_card.__key.75, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1427, i32 2}
!200 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 877, i32 4}
!203 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @handle_dmsg._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @handle_dmsg._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.80, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 882, i32 4}
!208 = !{ptr @handle_dmsg._entry.79, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @handle_dmsg._entry_ptr.81, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 905, i32 4}
!212 = !{ptr @handle_dmsg._entry.82, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @handle_dmsg._entry_ptr.84, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 915, i32 4}
!216 = !{ptr @handle_dmsg._entry.85, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @handle_dmsg._entry_ptr.87, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1038, i32 3}
!220 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @l1oip_dctrl._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @l1oip_dctrl._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.91, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1066, i32 4}
!225 = !{ptr @l1oip_dctrl._entry.90, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @l1oip_dctrl._entry_ptr.92, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.94, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1076, i32 4}
!229 = !{ptr @l1oip_dctrl._entry.93, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @l1oip_dctrl._entry_ptr.95, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 979, i32 3}
!233 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @open_dchannel._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @open_dchannel._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.99, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 986, i32 4}
!238 = !{ptr @open_dchannel._entry.98, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @open_dchannel._entry_ptr.100, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 998, i32 3}
!242 = !{ptr @open_dchannel._entry.101, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @open_dchannel._entry_ptr.103, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1015, i32 3}
!246 = !{ptr @.str.105, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @open_bchannel._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @open_bchannel._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @open_bchannel._entry.106, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1024, i32 3}
!251 = !{ptr @open_bchannel._entry_ptr.107, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 948, i32 4}
!254 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @channel_dctrl._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @channel_dctrl._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 954, i32 4}
!259 = !{ptr @channel_dctrl._entry.110, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @channel_dctrl._entry_ptr.112, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.114, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 961, i32 4}
!263 = !{ptr @channel_dctrl._entry.113, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @channel_dctrl._entry_ptr.115, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 967, i32 3}
!267 = !{ptr @channel_dctrl._entry.116, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @channel_dctrl._entry_ptr.118, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1096, i32 4}
!271 = !{ptr @handle_bmsg._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @handle_bmsg._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @handle_bmsg._entry.120, !274, !"_entry", i1 false, i1 false}
!274 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1101, i32 4}
!275 = !{ptr @handle_bmsg._entry_ptr.121, !274, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.123, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1109, i32 5}
!278 = !{ptr @handle_bmsg._entry.122, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @handle_bmsg._entry_ptr.124, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1120, i32 5}
!282 = !{ptr @handle_bmsg._entry.125, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @handle_bmsg._entry_ptr.127, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @handle_bmsg._entry.128, !285, !"_entry", i1 false, i1 false}
!285 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1148, i32 4}
!286 = !{ptr @handle_bmsg._entry_ptr.129, !285, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @handle_bmsg._entry.130, !288, !"_entry", i1 false, i1 false}
!288 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1157, i32 4}
!289 = !{ptr @handle_bmsg._entry_ptr.131, !288, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.132, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1205, i32 3}
!292 = !{ptr @l1oip_bctrl._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @l1oip_bctrl._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1220, i32 3}
!296 = !{ptr @l1oip_bctrl._entry.133, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @l1oip_bctrl._entry_ptr.135, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.136, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1183, i32 4}
!300 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @channel_bctrl._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @channel_bctrl._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @channel_bctrl._entry.138, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 1190, i32 3}
!305 = !{ptr @channel_bctrl._entry_ptr.139, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 785, i32 22}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 789, i32 3}
!310 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @l1oip_socket_open._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @l1oip_socket_open._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.144, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 796, i32 3}
!315 = !{ptr @l1oip_socket_open._entry.143, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @l1oip_socket_open._entry_ptr.145, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.146, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 759, i32 4}
!319 = !{ptr @.str.147, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @l1oip_socket_close._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @l1oip_socket_close._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 768, i32 4}
!324 = !{ptr @l1oip_socket_close._entry.148, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @l1oip_socket_close._entry_ptr.150, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @init_completion.__key, !327, !"__key", i1 false, i1 false}
!327 = !{!"../include/linux/completion.h", i32 87, i32 2}
!328 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.152, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 647, i32 3}
!331 = !{ptr @.str.153, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @l1oip_socket_thread._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @l1oip_socket_thread._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.155, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 660, i32 3}
!336 = !{ptr @l1oip_socket_thread._entry.154, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @l1oip_socket_thread._entry_ptr.156, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.158, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 678, i32 3}
!340 = !{ptr @l1oip_socket_thread._entry.157, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @l1oip_socket_thread._entry_ptr.159, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.161, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 686, i32 3}
!344 = !{ptr @l1oip_socket_thread._entry.160, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @l1oip_socket_thread._entry_ptr.162, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.164, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 704, i32 3}
!348 = !{ptr @l1oip_socket_thread._entry.163, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @l1oip_socket_thread._entry_ptr.165, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.167, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 713, i32 5}
!352 = !{ptr @l1oip_socket_thread._entry.166, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @l1oip_socket_thread._entry_ptr.168, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.170, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 730, i32 3}
!356 = !{ptr @l1oip_socket_thread._entry.169, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @l1oip_socket_thread._entry_ptr.171, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.173, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 746, i32 3}
!360 = !{ptr @l1oip_socket_thread._entry.172, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @l1oip_socket_thread._entry_ptr.174, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 455, i32 3}
!364 = !{ptr @.str.176, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @l1oip_socket_parse._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @l1oip_socket_parse._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.178, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 460, i32 3}
!369 = !{ptr @l1oip_socket_parse._entry.177, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @l1oip_socket_parse._entry_ptr.179, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.181, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 467, i32 3}
!373 = !{ptr @l1oip_socket_parse._entry.180, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @l1oip_socket_parse._entry_ptr.182, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.184, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 474, i32 3}
!377 = !{ptr @l1oip_socket_parse._entry.183, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @l1oip_socket_parse._entry_ptr.185, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.187, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 479, i32 3}
!381 = !{ptr @l1oip_socket_parse._entry.186, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @l1oip_socket_parse._entry_ptr.188, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.190, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 490, i32 3}
!385 = !{ptr @l1oip_socket_parse._entry.189, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @l1oip_socket_parse._entry_ptr.191, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.193, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 500, i32 4}
!389 = !{ptr @l1oip_socket_parse._entry.192, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @l1oip_socket_parse._entry_ptr.194, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.196, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 505, i32 4}
!393 = !{ptr @l1oip_socket_parse._entry.195, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @l1oip_socket_parse._entry_ptr.197, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.199, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 516, i32 4}
!397 = !{ptr @l1oip_socket_parse._entry.198, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @l1oip_socket_parse._entry_ptr.200, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.202, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 523, i32 4}
!401 = !{ptr @l1oip_socket_parse._entry.201, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @l1oip_socket_parse._entry_ptr.203, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.205, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 531, i32 3}
!405 = !{ptr @l1oip_socket_parse._entry.204, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @l1oip_socket_parse._entry_ptr.206, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.208, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 546, i32 4}
!409 = !{ptr @l1oip_socket_parse._entry.207, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @l1oip_socket_parse._entry_ptr.209, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.211, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 557, i32 4}
!413 = !{ptr @l1oip_socket_parse._entry.210, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @l1oip_socket_parse._entry_ptr.212, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.214, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 563, i32 4}
!417 = !{ptr @l1oip_socket_parse._entry.213, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @l1oip_socket_parse._entry_ptr.215, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.217, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 573, i32 3}
!421 = !{ptr @l1oip_socket_parse._entry.216, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @l1oip_socket_parse._entry_ptr.218, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.220, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 587, i32 4}
!425 = !{ptr @l1oip_socket_parse._entry.219, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @l1oip_socket_parse._entry_ptr.221, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.223, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 614, i32 4}
!429 = !{ptr @l1oip_socket_parse._entry.222, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @l1oip_socket_parse._entry_ptr.224, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.225, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 361, i32 4}
!433 = !{ptr @.str.226, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @l1oip_socket_recv._entry, !432, !"_entry", i1 false, i1 false}
!435 = !{ptr @l1oip_socket_recv._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.228, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 367, i32 3}
!438 = !{ptr @l1oip_socket_recv._entry.227, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @l1oip_socket_recv._entry_ptr.229, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.231, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 371, i32 3}
!442 = !{ptr @l1oip_socket_recv._entry.230, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @l1oip_socket_recv._entry_ptr.232, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.234, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 378, i32 3}
!446 = !{ptr @l1oip_socket_recv._entry.233, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @l1oip_socket_recv._entry_ptr.235, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.237, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 386, i32 3}
!450 = !{ptr @l1oip_socket_recv._entry.236, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @l1oip_socket_recv._entry_ptr.238, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.239, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 835, i32 3}
!454 = !{ptr @.str.240, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @l1oip_timeout._entry, !453, !"_entry", i1 false, i1 false}
!456 = !{ptr @l1oip_timeout._entry_ptr, !453, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @l1oip_timeout._entry.241, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 843, i32 4}
!459 = !{ptr @l1oip_timeout._entry_ptr.242, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.244, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/isdn/mISDN/l1oip_core.c", i32 853, i32 4}
!462 = !{ptr @l1oip_timeout._entry.243, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @l1oip_timeout._entry_ptr.245, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{!"sp"}
!465 = !{i32 1, !"wchar_size", i32 2}
!466 = !{i32 1, !"min_enum_size", i32 4}
!467 = !{i32 8, !"branch-target-enforcement", i32 0}
!468 = !{i32 8, !"sign-return-address", i32 0}
!469 = !{i32 8, !"sign-return-address-all", i32 0}
!470 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!471 = !{i32 7, !"uwtable", i32 1}
!472 = !{i32 7, !"frame-pointer", i32 2}
!473 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!474 = !{!"branch_weights", i32 1, i32 2000}
!475 = !{!"auto-init"}
!476 = !{!"branch_weights", i32 2000, i32 1}
