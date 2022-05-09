; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_core.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.Bprotocol = type { %struct.list_head, ptr, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDNstack = type { i32, ptr, ptr, ptr, %struct.wait_queue_head, %struct.sk_buff_head, %struct.list_head, ptr, %struct.mISDNchannel, %struct.mutex, %struct.mISDN_sock_list }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
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
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.dsp_conf = type { %struct.list_head, i32, %struct.list_head, i32, i32 }
%struct.dsp_conf_member = type { %struct.list_head, ptr }

@__UNIQUE_ID_author457 = internal constant [35 x i8] c"mISDN_dsp.author=Andreas Eversberg\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"mISDN_dsp.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype458 = internal constant [30 x i8] c"mISDN_dsp.parmtype=debug:uint\00", section ".modinfo", align 1
@__param_str_options = internal constant [18 x i8] c"mISDN_dsp.options\00", align 1
@options = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_options = internal constant %struct.kernel_param { ptr @__param_str_options, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @options } }, section "__param", align 4
@__UNIQUE_ID_optionstype459 = internal constant [32 x i8] c"mISDN_dsp.parmtype=options:uint\00", section ".modinfo", align 1
@__param_str_poll = internal constant [15 x i8] c"mISDN_dsp.poll\00", align 1
@poll = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_poll = internal constant %struct.kernel_param { ptr @__param_str_poll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @poll } }, section "__param", align 4
@__UNIQUE_ID_polltype460 = internal constant [29 x i8] c"mISDN_dsp.parmtype=poll:uint\00", section ".modinfo", align 1
@__param_str_dtmfthreshold = internal constant [24 x i8] c"mISDN_dsp.dtmfthreshold\00", align 1
@dtmfthreshold = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_dtmfthreshold = internal constant %struct.kernel_param { ptr @__param_str_dtmfthreshold, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @dtmfthreshold } }, section "__param", align 4
@__UNIQUE_ID_dtmfthresholdtype461 = internal constant [38 x i8] c"mISDN_dsp.parmtype=dtmfthreshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [44 x i8] c"mISDN_dsp.file=drivers/isdn/mISDN/mISDN_dsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [22 x i8] c"mISDN_dsp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp_lock\00", [23 x i8] zeroinitializer }, align 32
@dsp_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dsp_ilist = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dsp_ilist, ptr @dsp_ilist }, [24 x i8] zeroinitializer }, align 32
@conf_ilist = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @conf_ilist, ptr @conf_ilist }, [24 x i8] zeroinitializer }, align 32
@DSP = internal global { %struct.Bprotocol, [44 x i8] } { %struct.Bprotocol { %struct.list_head zeroinitializer, ptr @.str.7, i32 96, ptr @dspcreate }, [44 x i8] zeroinitializer }, align 32
@dsp_spl_tl = external dso_local global %struct.timer_list, align 4
@dsp_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mISDN_dsp: Audio DSP object inst list not empty.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsp_cleanup\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/isdn/mISDN/dsp_core.c\00", [34 x i8] zeroinitializer }, align 32
@dsp_cleanup._entry_ptr = internal global ptr @dsp_cleanup._entry, section ".printk_index", align 4
@dsp_cleanup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013mISDN_dsp: Conference list not empty. Not all memory freed.\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_cleanup._entry_ptr.6 = internal global ptr @dsp_cleanup._entry.4, section ".printk_index", align 4
@__initcall__kmod_mISDN_dsp__464_1225_dsp_init6 = internal global ptr @dsp_init, section ".initcall6.init", align 4
@__exitcall_dsp_cleanup = internal global ptr @dsp_cleanup, section ".exitcall.exit", align 4
@dsp_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@dsp_options = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@dsp_poll = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@dsp_tics = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@dspcreate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: vmalloc struct dsp failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dspcreate\00", [22 x i8] zeroinitializer }, align 32
@dspcreate._entry_ptr = internal global ptr @dspcreate._entry, section ".printk_index", align 4
@dspcreate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: creating new dsp instance\0A\00", [63 x i8] zeroinitializer }, align 32
@dspcreate._entry_ptr.12 = internal global ptr @dspcreate._entry.10, section ".printk_index", align 4
@dspcreate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&ndsp->workq)\00", [32 x i8] zeroinitializer }, align 32
@dspcreate._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s:cannot get module\0A\00", [40 x i8] zeroinitializer }, align 32
@dspcreate._entry_ptr.16 = internal global ptr @dspcreate._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DSP_C%x(0x%p)\00", [18 x i8] zeroinitializer }, align 32
@dspcreate.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&ndsp->tone.tl)\00", [47 x i8] zeroinitializer }, align 32
@dsp_send_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: fifo full %s, this is no bug!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsp_send_bh\00", [20 x i8] zeroinitializer }, align 32
@dsp_send_bh._entry_ptr = internal global ptr @dsp_send_bh._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@dsp_function._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: rx-data during rx_off for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsp_function\00", [19 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr = internal global ptr @dsp_function._entry, section ".printk_index", align 4
@dsp_function._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: digit(%c) to layer %s\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.27 = internal global ptr @dsp_function._entry.25, section ".printk_index", align 4
@dsp_function._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: PH_CONTROL INDICATION received: %x (len %d) %s\0A\00", [42 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.30 = internal global ptr @dsp_function._entry.28, section ".printk_index", align 4
@dsp_function._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: ignoring DTMF coefficients from HFC\0A\00", [53 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.33 = internal global ptr @dsp_function._entry.31, section ".printk_index", align 4
@dsp_function._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.35 = internal global ptr @dsp_function._entry.34, section ".printk_index", align 4
@dsp_function._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.3, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: change tx volume to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.38 = internal global ptr @dsp_function._entry.36, section ".printk_index", align 4
@dsp_function._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.24, ptr @.str.3, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: ctrl ind %x unhandled %s\0A\00", [32 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.41 = internal global ptr @dsp_function._entry.39, section ".printk_index", align 4
@dsp_function._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.24, ptr @.str.3, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: b_channel is now active %s\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.44 = internal global ptr @dsp_function._entry.42, section ".printk_index", align 4
@dsp_function._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.24, ptr @.str.3, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: done with activation, sending confirm to user space. %s\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.47 = internal global ptr @dsp_function._entry.45, section ".printk_index", align 4
@dsp_function._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.24, ptr @.str.3, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: b_channel is now inactive %s\0A\00", [60 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.50 = internal global ptr @dsp_function._entry.48, section ".printk_index", align 4
@dsp_function._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.24, ptr @.str.3, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: activating b_channel %s\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.53 = internal global ptr @dsp_function._entry.51, section ".printk_index", align 4
@dsp_function._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.24, ptr @.str.3, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: releasing b_channel %s\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.56 = internal global ptr @dsp_function._entry.54, section ".printk_index", align 4
@dsp_function._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.24, ptr @.str.3, i32 943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: msg %x unhandled %s\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_function._entry_ptr.59 = internal global ptr @dsp_function._entry.57, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dsp_rx_off_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: no peer, no rx_off\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsp_rx_off_member\00", [46 x i8] zeroinitializer }, align 32
@dsp_rx_off_member._entry_ptr = internal global ptr @dsp_rx_off_member._entry, section ".printk_index", align 4
@dsp_rx_off_member._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: 2nd CONTROL_CHANNEL failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_rx_off_member._entry_ptr.64 = internal global ptr @dsp_rx_off_member._entry.62, section ".printk_index", align 4
@dsp_rx_off_member._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s set rx_off = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dsp_rx_off_member._entry_ptr.67 = internal global ptr @dsp_rx_off_member._entry.65, section ".printk_index", align 4
@dsp_control_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: PH_CONTROL message too short\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_control_req\00", [16 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr = internal global ptr @dsp_control_req._entry, section ".printk_index", align 4
@dsp_control_req._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: start dtmf\0A\00", [46 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.72 = internal global ptr @dsp_control_req._entry.70, section ".printk_index", align 4
@dsp_control_req._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.3, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015changing DTMF Threshold to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.75 = internal global ptr @dsp_control_req._entry.73, section ".printk_index", align 4
@dsp_control_req._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: stop dtmf\0A\00", [47 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.78 = internal global ptr @dsp_control_req._entry.76, section ".printk_index", align 4
@dsp_control_req._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: join conference %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.81 = internal global ptr @dsp_control_req._entry.79, section ".printk_index", align 4
@dsp_control_req._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.69, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: release conference\0A\00", [38 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.84 = internal global ptr @dsp_control_req._entry.82, section ".printk_index", align 4
@dsp_control_req._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.69, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: turn tone 0x%x on\0A\00", [39 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.87 = internal global ptr @dsp_control_req._entry.85, section ".printk_index", align 4
@dsp_control_req._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.69, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: turn tone off\0A\00", [43 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.90 = internal global ptr @dsp_control_req._entry.88, section ".printk_index", align 4
@dsp_control_req._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.69, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: change tx vol to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.93 = internal global ptr @dsp_control_req._entry.91, section ".printk_index", align 4
@dsp_control_req._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.69, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: change rx vol to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.96 = internal global ptr @dsp_control_req._entry.94, section ".printk_index", align 4
@dsp_control_req._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.69, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: enable cmx-echo\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.99 = internal global ptr @dsp_control_req._entry.97, section ".printk_index", align 4
@dsp_control_req._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.69, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: disable cmx-echo\0A\00", [40 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.102 = internal global ptr @dsp_control_req._entry.100, section ".printk_index", align 4
@dsp_control_req._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.69, ptr @.str.3, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: enable receive to user space\0A\00", [60 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.105 = internal global ptr @dsp_control_req._entry.103, section ".printk_index", align 4
@dsp_control_req._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.69, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: disable receive to user space\0A\00", [59 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.108 = internal global ptr @dsp_control_req._entry.106, section ".printk_index", align 4
@dsp_control_req._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.69, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: enable mixing of tx-data with conf members\0A\00", [46 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.111 = internal global ptr @dsp_control_req._entry.109, section ".printk_index", align 4
@dsp_control_req._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.69, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: disable mixing of tx-data with conf members\0A\00", [45 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.114 = internal global ptr @dsp_control_req._entry.112, section ".printk_index", align 4
@dsp_control_req._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.69, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: enable tx-data\0A\00", [42 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.117 = internal global ptr @dsp_control_req._entry.115, section ".printk_index", align 4
@dsp_control_req._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.69, ptr @.str.3, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: disable tx-data\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.120 = internal global ptr @dsp_control_req._entry.118, section ".printk_index", align 4
@dsp_control_req._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.69, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: use delay algorithm to compensate jitter (%d samples)\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.123 = internal global ptr @dsp_control_req._entry.121, section ".printk_index", align 4
@dsp_control_req._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.69, ptr @.str.3, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: use jitter algorithm to compensate jitter\0A\00", [47 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.126 = internal global ptr @dsp_control_req._entry.124, section ".printk_index", align 4
@dsp_control_req._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.69, ptr @.str.3, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: use dejitter on TX buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.129 = internal global ptr @dsp_control_req._entry.127, section ".printk_index", align 4
@dsp_control_req._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.69, ptr @.str.3, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: use TX buffer without dejittering\0A\00", [55 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.132 = internal global ptr @dsp_control_req._entry.130, section ".printk_index", align 4
@dsp_control_req._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.69, ptr @.str.3, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: pipeline config string is not NULL terminated!\0A\00", [42 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.135 = internal global ptr @dsp_control_req._entry.133, section ".printk_index", align 4
@dsp_control_req._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.69, ptr @.str.3, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: turn blowfish on (key not shown)\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.138 = internal global ptr @dsp_control_req._entry.136, section ".printk_index", align 4
@dsp_control_req._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.69, ptr @.str.3, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: turn blowfish off\0A\00", [39 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.141 = internal global ptr @dsp_control_req._entry.139, section ".printk_index", align 4
@dsp_control_req._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.69, ptr @.str.3, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ctrl req %x unhandled\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_control_req._entry_ptr.144 = internal global ptr @dsp_control_req._entry.142, section ".printk_index", align 4
@get_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: no peer, no features\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_features\00", [19 x i8] zeroinitializer }, align 32
@get_features._entry_ptr = internal global ptr @get_features._entry, section ".printk_index", align 4
@get_features._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: CONTROL_CHANNEL failed\0A\00", [34 x i8] zeroinitializer }, align 32
@get_features._entry_ptr.149 = internal global ptr @get_features._entry.147, section ".printk_index", align 4
@get_features._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.146, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_features._entry_ptr.151 = internal global ptr @get_features._entry.150, section ".printk_index", align 4
@get_features._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.146, ptr @.str.3, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: features not supported for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@get_features._entry_ptr.154 = internal global ptr @get_features._entry.152, section ".printk_index", align 4
@dsp_fill_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.3, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: no peer, no fill_empty\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsp_fill_empty\00", [17 x i8] zeroinitializer }, align 32
@dsp_fill_empty._entry_ptr = internal global ptr @dsp_fill_empty._entry, section ".printk_index", align 4
@dsp_silence = external dso_local local_unnamed_addr global i8, align 1
@dsp_fill_empty._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.156, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_fill_empty._entry_ptr.158 = internal global ptr @dsp_fill_empty._entry.157, section ".printk_index", align 4
@dsp_fill_empty._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.156, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s set fill_empty = 1\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_fill_empty._entry_ptr.161 = internal global ptr @dsp_fill_empty._entry.159, section ".printk_index", align 4
@dsp_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s:(%x)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp_ctrl\00", [23 x i8] zeroinitializer }, align 32
@dsp_ctrl._entry_ptr = internal global ptr @dsp_ctrl._entry, section ".printk_index", align 4
@dsp_ctrl._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.3, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: releasing member %s\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_ctrl._entry_ptr.166 = internal global ptr @dsp_ctrl._entry.164, section ".printk_index", align 4
@dsp_ctrl._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.3, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: remove & destroy object %s\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_ctrl._entry_ptr.169 = internal global ptr @dsp_ctrl._entry.167, section ".printk_index", align 4
@dsp_ctrl._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.3, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: dsp instance released\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_ctrl._entry_ptr.172 = internal global ptr @dsp_ctrl._entry.170, section ".printk_index", align 4
@dsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016DSP module %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp_init\00", [23 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr = internal global ptr @dsp_init._entry, section ".printk_index", align 4
@dsp_init._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.3, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Wrong poll value (%d), use %d maximum.\0A\00", [50 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.177 = internal global ptr @dsp_init._entry.175, section ".printk_index", align 4
@dsp_init._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.174, ptr @.str.3, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Wrong poll value (%d), use 8 minimum.\0A\00", [51 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.180 = internal global ptr @dsp_init._entry.178, section ".printk_index", align 4
@dsp_init._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.174, ptr @.str.3, i32 1144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016mISDN_dsp: Cannot clock every %d samples (0,125 ms). It is not a multiple of %d HZ.\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.183 = internal global ptr @dsp_init._entry.181, section ".printk_index", align 4
@dsp_init._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.174, ptr @.str.3, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"\016mISDN_dsp: There is no multiple of kernel clock that equals exactly the duration of 8-256 samples. (Choose kernel clock speed like 100, 250, 300, 1000)\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.186 = internal global ptr @dsp_init._entry.184, section ".printk_index", align 4
@dsp_init._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.174, ptr @.str.3, i32 1170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016mISDN_dsp: DSP clocks every %d samples. This equals %d jiffies.\0A\00", [61 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.189 = internal global ptr @dsp_init._entry.187, section ".printk_index", align 4
@dsp_audio_ulaw_to_s32 = external dso_local global [256 x i32], align 4
@dsp_audio_alaw_to_s32 = external dso_local global [256 x i32], align 4
@dsp_audio_law_to_s32 = external dso_local local_unnamed_addr global ptr, align 4
@dsp_init._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.174, ptr @.str.3, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mISDN_dsp: Can't initialize pipeline, error(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.192 = internal global ptr @dsp_init._entry.190, section ".printk_index", align 4
@dsp_init._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.174, ptr @.str.3, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Can't register %s error(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_init._entry_ptr.195 = internal global ptr @dsp_init._entry.193, section ".printk_index", align 4
@dsp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&dsp_spl_tl)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dsp_spl_jiffies = external dso_local local_unnamed_addr global i32, align 4
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 257, i64 258, i64 513, i64 514, i64 2049, i64 2050, i64 4100, i64 4356, i64 8193, i64 8194, i64 12292, i64 12296, i64 16642, i64 16898, i64 24578]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 9729, i64 16384]
@__sancov_gen_cov_switch_values.199 = internal global [25 x i64] [i64 23, i64 32, i64 8448, i64 8704, i64 9219, i64 9220, i64 9221, i64 9222, i64 9223, i64 9224, i64 9225, i64 9226, i64 9227, i64 9228, i64 9229, i64 9230, i64 9231, i64 9232, i64 9233, i64 9234, i64 9235, i64 9236, i64 9237, i64 9238, i64 9240]
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 165, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 166, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 167, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"dtmfthreshold\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 168, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant [9 x i8] c"dsp_lock\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 179, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [10 x i8] c"dsp_ilist\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 180, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [11 x i8] c"conf_ilist\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 181, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [4 x i8] c"DSP\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1108, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1214, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1218, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [10 x i8] c"dsp_debug\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 182, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"dsp_options\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 183, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant [9 x i8] c"dsp_poll\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 184, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant [9 x i8] c"dsp_tics\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 184, i32 15 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1111, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1057, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1061, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1064, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1078, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1081, i32 22 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1092, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1018, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1984, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 693, i32 5 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 743, i32 6 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 771, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 778, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 789, i32 6 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 815, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 824, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 832, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 848, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 859, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 907, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 923, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 942, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 218, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 225, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 231, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 290, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 304, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 307, i32 5 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 321, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 334, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 345, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 362, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 378, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 398, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 415, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 424, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 434, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 442, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 449, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 460, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 474, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 485, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 494, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 517, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 529, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 539, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 549, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 558, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 580, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 610, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 618, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 633, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 640, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 654, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 659, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 263, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 271, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 276, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 958, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 980, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 988, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 994, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1120, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1129, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1135, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1142, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1162, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1169, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1186, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1193, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 1198, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.696 = private constant [33 x i8] c"../drivers/isdn/mISDN/dsp_core.c\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.696, i32 163, i32 41 }
@llvm.compiler.used = appending global [247 x ptr] [ptr @__UNIQUE_ID_author457, ptr @__UNIQUE_ID_debugtype458, ptr @__UNIQUE_ID_dtmfthresholdtype461, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__UNIQUE_ID_optionstype459, ptr @__UNIQUE_ID_polltype460, ptr @__exitcall_dsp_cleanup, ptr @__initcall__kmod_mISDN_dsp__464_1225_dsp_init6, ptr @__param_debug, ptr @__param_dtmfthreshold, ptr @__param_options, ptr @__param_poll, ptr @dsp_cleanup, ptr @dsp_cleanup._entry, ptr @dsp_cleanup._entry.4, ptr @dsp_cleanup._entry_ptr, ptr @dsp_cleanup._entry_ptr.6, ptr @dsp_control_req._entry, ptr @dsp_control_req._entry.100, ptr @dsp_control_req._entry.103, ptr @dsp_control_req._entry.106, ptr @dsp_control_req._entry.109, ptr @dsp_control_req._entry.112, ptr @dsp_control_req._entry.115, ptr @dsp_control_req._entry.118, ptr @dsp_control_req._entry.121, ptr @dsp_control_req._entry.124, ptr @dsp_control_req._entry.127, ptr @dsp_control_req._entry.130, ptr @dsp_control_req._entry.133, ptr @dsp_control_req._entry.136, ptr @dsp_control_req._entry.139, ptr @dsp_control_req._entry.142, ptr @dsp_control_req._entry.70, ptr @dsp_control_req._entry.73, ptr @dsp_control_req._entry.76, ptr @dsp_control_req._entry.79, ptr @dsp_control_req._entry.82, ptr @dsp_control_req._entry.85, ptr @dsp_control_req._entry.88, ptr @dsp_control_req._entry.91, ptr @dsp_control_req._entry.94, ptr @dsp_control_req._entry.97, ptr @dsp_control_req._entry_ptr, ptr @dsp_control_req._entry_ptr.102, ptr @dsp_control_req._entry_ptr.105, ptr @dsp_control_req._entry_ptr.108, ptr @dsp_control_req._entry_ptr.111, ptr @dsp_control_req._entry_ptr.114, ptr @dsp_control_req._entry_ptr.117, ptr @dsp_control_req._entry_ptr.120, ptr @dsp_control_req._entry_ptr.123, ptr @dsp_control_req._entry_ptr.126, ptr @dsp_control_req._entry_ptr.129, ptr @dsp_control_req._entry_ptr.132, ptr @dsp_control_req._entry_ptr.135, ptr @dsp_control_req._entry_ptr.138, ptr @dsp_control_req._entry_ptr.141, ptr @dsp_control_req._entry_ptr.144, ptr @dsp_control_req._entry_ptr.72, ptr @dsp_control_req._entry_ptr.75, ptr @dsp_control_req._entry_ptr.78, ptr @dsp_control_req._entry_ptr.81, ptr @dsp_control_req._entry_ptr.84, ptr @dsp_control_req._entry_ptr.87, ptr @dsp_control_req._entry_ptr.90, ptr @dsp_control_req._entry_ptr.93, ptr @dsp_control_req._entry_ptr.96, ptr @dsp_control_req._entry_ptr.99, ptr @dsp_ctrl._entry, ptr @dsp_ctrl._entry.164, ptr @dsp_ctrl._entry.167, ptr @dsp_ctrl._entry.170, ptr @dsp_ctrl._entry_ptr, ptr @dsp_ctrl._entry_ptr.166, ptr @dsp_ctrl._entry_ptr.169, ptr @dsp_ctrl._entry_ptr.172, ptr @dsp_fill_empty._entry, ptr @dsp_fill_empty._entry.157, ptr @dsp_fill_empty._entry.159, ptr @dsp_fill_empty._entry_ptr, ptr @dsp_fill_empty._entry_ptr.158, ptr @dsp_fill_empty._entry_ptr.161, ptr @dsp_function._entry, ptr @dsp_function._entry.25, ptr @dsp_function._entry.28, ptr @dsp_function._entry.31, ptr @dsp_function._entry.34, ptr @dsp_function._entry.36, ptr @dsp_function._entry.39, ptr @dsp_function._entry.42, ptr @dsp_function._entry.45, ptr @dsp_function._entry.48, ptr @dsp_function._entry.51, ptr @dsp_function._entry.54, ptr @dsp_function._entry.57, ptr @dsp_function._entry_ptr, ptr @dsp_function._entry_ptr.27, ptr @dsp_function._entry_ptr.30, ptr @dsp_function._entry_ptr.33, ptr @dsp_function._entry_ptr.35, ptr @dsp_function._entry_ptr.38, ptr @dsp_function._entry_ptr.41, ptr @dsp_function._entry_ptr.44, ptr @dsp_function._entry_ptr.47, ptr @dsp_function._entry_ptr.50, ptr @dsp_function._entry_ptr.53, ptr @dsp_function._entry_ptr.56, ptr @dsp_function._entry_ptr.59, ptr @dsp_init._entry, ptr @dsp_init._entry.175, ptr @dsp_init._entry.178, ptr @dsp_init._entry.181, ptr @dsp_init._entry.184, ptr @dsp_init._entry.187, ptr @dsp_init._entry.190, ptr @dsp_init._entry.193, ptr @dsp_init._entry_ptr, ptr @dsp_init._entry_ptr.177, ptr @dsp_init._entry_ptr.180, ptr @dsp_init._entry_ptr.183, ptr @dsp_init._entry_ptr.186, ptr @dsp_init._entry_ptr.189, ptr @dsp_init._entry_ptr.192, ptr @dsp_init._entry_ptr.195, ptr @dsp_rx_off_member._entry, ptr @dsp_rx_off_member._entry.62, ptr @dsp_rx_off_member._entry.65, ptr @dsp_rx_off_member._entry_ptr, ptr @dsp_rx_off_member._entry_ptr.64, ptr @dsp_rx_off_member._entry_ptr.67, ptr @dsp_send_bh._entry, ptr @dsp_send_bh._entry_ptr, ptr @dspcreate._entry, ptr @dspcreate._entry.10, ptr @dspcreate._entry.14, ptr @dspcreate._entry_ptr, ptr @dspcreate._entry_ptr.12, ptr @dspcreate._entry_ptr.16, ptr @get_features._entry, ptr @get_features._entry.147, ptr @get_features._entry.150, ptr @get_features._entry.152, ptr @get_features._entry_ptr, ptr @get_features._entry_ptr.149, ptr @get_features._entry_ptr.151, ptr @get_features._entry_ptr.154, ptr @debug, ptr @options, ptr @poll, ptr @dtmfthreshold, ptr @.str, ptr @dsp_lock, ptr @dsp_ilist, ptr @conf_ilist, ptr @DSP, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @dsp_debug, ptr @dsp_options, ptr @dsp_poll, ptr @dsp_tics, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @dspcreate.__key, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @dspcreate.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @dsp_init.__key, ptr @.str.196, ptr @.str.197], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @options to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtmfthreshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ilist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conf_ilist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DSP to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cleanup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_options to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_poll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_tics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcreate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcreate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcreate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcreate._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dspcreate.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_send_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_function._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rx_off_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rx_off_member._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rx_off_member._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_control_req._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_features._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_features._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_features._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_fill_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_fill_empty._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_fill_empty._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ctrl._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ctrl._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_ctrl._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsp_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mISDN_unregister_Bprotocol(ptr noundef nonnull @DSP) #9
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @dsp_spl_tl) #9
  %0 = load volatile ptr, ptr @dsp_ilist, align 4
  %cmp.i.not = icmp eq ptr %0, @dsp_ilist
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load volatile ptr, ptr @conf_ilist, align 4
  %cmp.i11.not = icmp eq ptr %1, @conf_ilist
  br i1 %cmp.i11.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  tail call void @dsp_pipeline_module_exit() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_Bprotocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_pipeline_module_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.197) #12
  %0 = load i32, ptr @options, align 4
  store i32 %0, ptr @dsp_options, align 4
  %1 = load i32, ptr @debug, align 4
  store i32 %1, ptr @dsp_debug, align 4
  %2 = load i32, ptr @poll, align 4
  store i32 %2, ptr @dsp_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.while.body_crit_edge, label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %cmp = icmp sgt i32 %2, 256
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.174, i32 noundef %2, i32 noundef 256) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp7 = icmp slt i32 %2, 8
  br i1 %cmp7, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.174, i32 noundef %2) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %mul = mul nuw nsw i32 %2, 100
  %div93.lhs.trunc = trunc i32 %mul to i16
  %div9394 = udiv i16 %div93.lhs.trunc, 8000
  %div93.zext = zext i16 %div9394 to i32
  store i32 %div93.zext, ptr @dsp_tics, align 4
  %mul15 = mul nuw nsw i32 %div93.zext, 8000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul15, i32 %mul)
  %cmp17.not = icmp eq i32 %mul15, %mul
  br i1 %cmp17.not, label %if.end14.if.end36_crit_edge, label %do.end21

if.end14.if.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef %2, i32 noundef 100) #12
  br label %cleanup

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %entry.while.body_crit_edge
  %storemerge97 = phi i32 [ %inc, %if.end35.while.body_crit_edge ], [ 8, %entry.while.body_crit_edge ]
  %mul26 = mul nuw nsw i32 %storemerge97, 100
  %div27.udiv = udiv i32 %storemerge97, 80
  %mul28 = mul nsw i32 %div27.udiv, 8000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul28, i32 %mul26)
  %cmp30 = icmp eq i32 %mul28, %mul26
  br i1 %cmp30, label %if.then31, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then31:                                        ; preds = %while.body
  store i32 %div27.udiv, ptr @dsp_tics, align 4
  store i32 %storemerge97, ptr @dsp_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %storemerge97)
  %cmp32 = icmp ugt i32 %storemerge97, 63
  br i1 %cmp32, label %do.end47.loopexit, label %if.then31.if.end35_crit_edge

if.then31.if.end35_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %if.then31.if.end35_crit_edge, %while.body.if.end35_crit_edge
  %inc = add nuw nsw i32 %storemerge97, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %if.end36.loopexit, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end36.loopexit:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  store i32 257, ptr @poll, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.loopexit, %if.end14.if.end36_crit_edge
  %.pr = load i32, ptr @dsp_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp37 = icmp eq i32 %.pr, 0
  br i1 %cmp37, label %do.end41, label %if.end36.do.end47_crit_edge

if.end36.do.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #12
  br label %cleanup

do.end47.loopexit:                                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %storemerge97, ptr @poll, align 4
  br label %do.end47

do.end47:                                         ; preds = %do.end47.loopexit, %if.end36.do.end47_crit_edge
  %3 = phi i32 [ %.pr, %if.end36.do.end47_crit_edge ], [ %storemerge97, %do.end47.loopexit ]
  %4 = load i32, ptr @dsp_tics, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, i32 noundef %3, i32 noundef %4) #12
  tail call void @dsp_audio_generate_law_tables() #9
  %5 = load i32, ptr @dsp_options, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool50.not, i8 42, i8 -1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  store i8 %conv, ptr @dsp_silence, align 1
  %cond53 = select i1 %tobool50.not, ptr @dsp_audio_alaw_to_s32, ptr @dsp_audio_ulaw_to_s32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  store ptr %cond53, ptr @dsp_audio_law_to_s32, align 4
  tail call void @dsp_audio_generate_s2law_table() #9
  tail call void @dsp_audio_generate_seven() #9
  tail call void @dsp_audio_generate_mix_table() #9
  %6 = load i32, ptr @dsp_options, align 4
  %and54 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.end47.if.end57_crit_edge, label %if.then56

do.end47.if.end57_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then56:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_audio_generate_ulaw_samples() #9
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %do.end47.if.end57_crit_edge
  tail call void @dsp_audio_generate_volume_changes() #9
  %call58 = tail call i32 @dsp_pipeline_module_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end66, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %call58) #12
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %call67 = tail call i32 @mISDN_register_Bprotocol(ptr noundef nonnull @DSP) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %do.body76, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %7 = load ptr, ptr getelementptr inbounds (%struct.Bprotocol, ptr @DSP, i32 0, i32 1), align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %7, i32 noundef %call67) #12
  br label %cleanup

do.body76:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @init_timer_key(ptr noundef nonnull @dsp_spl_tl, ptr noundef nonnull @dsp_cmx_send, i32 noundef 0, ptr noundef nonnull @.str.196, ptr noundef nonnull @dsp_init.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @dsp_tics, align 4
  %add = add i32 %9, %8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.timer_list, ptr @dsp_spl_tl, i32 0, i32 1) to i32))
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @dsp_spl_tl, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dsp_spl_jiffies to i32))
  store i32 %add, ptr @dsp_spl_jiffies, align 4
  tail call void @add_timer(ptr noundef nonnull @dsp_spl_tl) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body76, %do.end72, %do.end63, %do.end41, %do.end21, %do.end11, %do.end4
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -22, %do.end11 ], [ -22, %do.end21 ], [ -22, %do.end41 ], [ %call58, %do.end63 ], [ %call67, %do.end72 ], [ 0, %do.body76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dspcreate(ptr nocapture noundef %crq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crq, align 4
  %.off = add i32 %1, -37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vzalloc(i32 noundef 70564) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.do.body14_crit_edge, label %do.end10

if.end5.do.body14_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #12
  br label %do.body14

do.body14:                                        ; preds = %do.end10, %if.end5.do.body14_crit_edge
  %workq = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 13
  tail call void @__init_work(ptr noundef %workq, i32 noundef 0) #9
  %3 = ptrtoint ptr %workq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %workq, align 4
  %lockdep_map = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @dspcreate.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry18 = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 13, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dsp_send_bh, ptr %func, align 4
  %sendq = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %7 = ptrtoint ptr %sendq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sendq, ptr %sendq, align 4
  %prev.i.i = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 14, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sendq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i, align 4
  %ch = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 1
  %send = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dsp_function, ptr %send, align 4
  %ctrl = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dsp_ctrl, ptr %ctrl, align 4
  %ch23 = getelementptr inbounds %struct.channel_req, ptr %crq, i32 0, i32 2
  %12 = ptrtoint ptr %ch23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch23, align 4
  %up = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %up, align 4
  store ptr %ch, ptr %ch23, align 4
  %15 = ptrtoint ptr %crq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %16)
  %cmp27 = icmp eq i32 %16, 37
  %spec.select = select i1 %cmp27, i32 33, i32 34
  %not.cmp27 = xor i1 %cmp27, true
  %spec.select96 = zext i1 %not.cmp27 to i32
  %17 = ptrtoint ptr %crq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %crq, align 4
  %18 = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select96, ptr %18, align 4
  %call33 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call33, label %do.body14.if.end40_crit_edge, label %do.end37

do.body14.if.end40_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end37:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %do.body14.if.end40_crit_edge
  %name = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %up, align 4
  %st = getelementptr inbounds %struct.mISDNchannel, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st, align 4
  %dev = getelementptr inbounds %struct.mISDNstack, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %add = add i32 %27, 1
  %call42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef %add, ptr noundef nonnull %call)
  %features = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 33
  %28 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %features, align 4
  %pcm_id = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 33, i32 5
  %29 = ptrtoint ptr %pcm_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %pcm_id, align 4
  %pcm_slot_rx = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 36
  %tl = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 9, i32 6
  %30 = call ptr @memset(ptr %pcm_slot_rx, i32 255, i32 20)
  tail call void @init_timer_key(ptr noundef %tl, ptr noundef nonnull @dsp_tone_timeout, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @dspcreate.__key.18) #9
  %31 = load i32, ptr @dtmfthreshold, align 4
  %32 = add i32 %31, -501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -481, i32 %32)
  %33 = icmp ult i32 %32, -481
  br i1 %33, label %if.then49, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  store i32 200, ptr @dtmfthreshold, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end40.if.end50_crit_edge
  %34 = load i32, ptr @dtmfthreshold, align 4
  %mul = mul i32 %34, 10000
  %treshold = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %treshold to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %treshold, align 4
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %pipeline = getelementptr inbounds %struct.dsp, ptr %call, i32 0, i32 52
  %call61 = tail call i32 @dsp_pipeline_init(ptr noundef %pipeline) #9
  %36 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dsp_ilist, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %36, ptr noundef nonnull @dsp_ilist) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_add_tail.exit_crit_edge

if.end50.list_add_tail.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call, ptr getelementptr inbounds (%struct.list_head, ptr @dsp_ilist, i32 0, i32 1), align 4
  %37 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dsp_ilist, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end50.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call56) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %do.end ], [ -93, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsp_send_bh(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hdlc = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data_pending = getelementptr i8, ptr %work, i32 104
  %2 = ptrtoint ptr %data_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sendq = getelementptr i8, ptr %work, i32 44
  %call58 = tail call ptr @skb_dequeue(ptr noundef %sendq) #9
  %tobool2.not59 = icmp eq ptr %call58, null
  br i1 %tobool2.not59, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %data_pending3 = getelementptr i8, ptr %work, i32 104
  %name = getelementptr i8, ptr %work, i32 -416
  %peer = getelementptr i8, ptr %work, i32 -436
  %recv = getelementptr i8, ptr %work, i32 -428
  %up = getelementptr i8, ptr %work, i32 -420
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call60 = phi ptr [ %call58, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %data_pending3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_pending3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %while.body
  %6 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end10_crit_edge, label %do.end

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %name) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call60) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else34, %if.then31, %if.then24.while.cond.backedge_crit_edge, %if.else, %if.then19, %if.then14.while.cond.backedge_crit_edge, %if.end10
  %call = tail call ptr @skb_dequeue(ptr noundef %sendq) #9
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call60, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %cb, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12292, i32 %8)
  %cmp = icmp eq i32 %8, 12292
  br i1 %cmp, label %if.then12, label %if.else22

if.then12:                                        ; preds = %if.end11
  %9 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %up, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send, align 4
  %call17 = tail call i32 %12(ptr noundef nonnull %10, ptr noundef nonnull %call60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.while.cond.backedge_crit_edge, label %if.then19

if.then14.while.cond.backedge_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call60) #9
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call60) #9
  br label %while.cond.backedge

if.else22:                                        ; preds = %if.end11
  %13 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peer, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.else34, label %if.then24

if.then24:                                        ; preds = %if.else22
  %15 = ptrtoint ptr %data_pending3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %data_pending3, align 4
  %16 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %recv, align 4
  %call29 = tail call i32 %17(ptr noundef nonnull %14, ptr noundef nonnull %call60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then24.while.cond.backedge_crit_edge, label %if.then31

if.then24.while.cond.backedge_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call60) #9
  %18 = ptrtoint ptr %data_pending3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %data_pending3, align 4
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %call60) #9
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsp_function(ptr noundef %ch, ptr noundef %skb) #3 align 64 {
entry:
  %cq.i719 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i = alloca %struct.mISDN_ctrl_req, align 4
  %cont.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ch, i32 -8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %cb, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default481 [
    i32 24578, label %sw.bb
    i32 8194, label %entry.sw.bb10_crit_edge
    i32 12296, label %entry.sw.bb10_crit_edge759
    i32 2050, label %sw.bb139
    i32 258, label %entry.sw.bb251_crit_edge
    i32 16642, label %entry.sw.bb251_crit_edge760
    i32 514, label %entry.sw.bb300_crit_edge
    i32 16898, label %entry.sw.bb300_crit_edge761
    i32 12292, label %entry.sw.bb337_crit_edge
    i32 8193, label %entry.sw.bb337_crit_edge762
    i32 2049, label %do.body386
    i32 4100, label %entry.sw.bb399_crit_edge
    i32 257, label %entry.sw.bb399_crit_edge763
    i32 4356, label %entry.sw.bb428_crit_edge
    i32 513, label %entry.sw.bb428_crit_edge764
  ]

entry.sw.bb428_crit_edge764:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb428

entry.sw.bb428_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb428

entry.sw.bb399_crit_edge763:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb399

entry.sw.bb399_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb399

entry.sw.bb337_crit_edge762:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb337

entry.sw.bb337_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb337

entry.sw.bb300_crit_edge761:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb300

entry.sw.bb300_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb300

entry.sw.bb251_crit_edge760:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb251

entry.sw.bb251_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb251

entry.sw.bb10_crit_edge759:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  %data_pending = getelementptr i8, ptr %ch, i32 568
  %3 = ptrtoint ptr %data_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data_pending, align 4
  %hdlc = getelementptr i8, ptr %ch, i32 564
  %4 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %sw.bb.if.then496_crit_edge, label %do.body1

sw.bb.if.then496_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

do.body1:                                         ; preds = %sw.bb
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %b_active = getelementptr i8, ptr %ch, i32 112
  %6 = ptrtoint ptr %b_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %b_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.body1.if.end_crit_edge, label %if.then7

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %workq = getelementptr i8, ptr %ch, i32 464
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %workq) #9
  br label %if.end

if.end:                                           ; preds = %if.then7, %do.body1.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call3) #9
  br label %if.then496

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge759
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %sw.bb10.cleanup_crit_edge, label %if.end14

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  %rx_is_off = getelementptr i8, ptr %ch, i32 128
  %11 = ptrtoint ptr %rx_is_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_is_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %if.end14.if.end25_crit_edge, label %if.then16

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then16:                                        ; preds = %if.end14
  %13 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.if.end25_crit_edge, label %do.end21

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %ch, i32 48
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %name) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.then16.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %hdlc26 = getelementptr i8, ptr %ch, i32 564
  %14 = ptrtoint ptr %hdlc26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hdlc26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool27.not = icmp eq i32 %15, 0
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  br i1 %tobool27.not, label %do.body54, label %do.body30

do.body30:                                        ; preds = %if.end25
  tail call void @dsp_cmx_hdlc(ptr noundef %add.ptr, ptr noundef %skb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call61) #9
  %rx_disabled = getelementptr i8, ptr %ch, i32 124
  %16 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  br i1 %tobool42.not, label %if.end44, label %do.body30.if.then496_crit_edge

do.body30.if.then496_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.end44:                                         ; preds = %do.body30
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 12296, ptr %cb, align 1
  %up = getelementptr i8, ptr %ch, i32 44
  %19 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %up, align 4
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %if.end44.if.then496_crit_edge, label %if.then47

if.end44.if.then496_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %send = getelementptr inbounds %struct.mISDNchannel, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send, align 4
  %call50 = tail call i32 %22(ptr noundef nonnull %20, ptr noundef %skb) #9
  br label %cleanup

do.body54:                                        ; preds = %if.end25
  %bf_enable = getelementptr i8, ptr %ch, i32 66264
  %23 = ptrtoint ptr %bf_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bf_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool66.not = icmp eq i32 %24, 0
  br i1 %tobool66.not, label %do.body54.if.end69_crit_edge, label %if.then67

do.body54.if.end69_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then67:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  tail call void @dsp_bf_decrypt(ptr noundef %add.ptr, ptr noundef %26, i32 noundef %28) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %do.body54.if.end69_crit_edge
  %inuse = getelementptr i8, ptr %ch, i32 70552
  %29 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool70.not = icmp eq i32 %30, 0
  br i1 %tobool70.not, label %if.end69.if.end75_crit_edge, label %if.then71

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %pipeline = getelementptr i8, ptr %ch, i32 70500
  %data73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data73, align 4
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %id, align 1
  tail call void @dsp_pipeline_process_rx(ptr noundef %pipeline, ptr noundef %32, i32 noundef %34, i32 noundef %36) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end69.if.end75_crit_edge
  %rx_volume = getelementptr i8, ptr %ch, i32 460
  %37 = ptrtoint ptr %rx_volume to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool76.not = icmp eq i32 %38, 0
  br i1 %tobool76.not, label %if.end75.if.end79_crit_edge, label %if.then77

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_change_volume(ptr noundef %skb, i32 noundef %38) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  %software = getelementptr i8, ptr %ch, i32 216
  %39 = ptrtoint ptr %software to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %software, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool80.not = icmp eq i32 %40, 0
  br i1 %tobool80.not, label %if.end79.if.end87_crit_edge, label %if.then81

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %data82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data82, align 4
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %45 = load i32, ptr @dsp_options, align 4
  %and84 = and i32 %45, 1
  %call86 = tail call ptr @dsp_dtmf_goertzel_decode(ptr noundef %add.ptr, ptr noundef %42, i32 noundef %44, i32 noundef %and84) #9
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %if.end79.if.end87_crit_edge
  %digits.0 = phi ptr [ %call86, %if.then81 ], [ null, %if.end79.if.end87_crit_edge ]
  %conf = getelementptr i8, ptr %ch, i32 576
  %46 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %conf, align 4
  %tobool88.not = icmp eq ptr %47, null
  br i1 %tobool88.not, label %if.end87.if.end93_crit_edge, label %land.lhs.true

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true:                                    ; preds = %if.end87
  %software90 = getelementptr inbounds %struct.dsp_conf, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %software90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %software90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool91.not = icmp eq i32 %49, 0
  br i1 %tobool91.not, label %land.lhs.true.if.end93_crit_edge, label %if.then92

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then92:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_receive(ptr noundef %add.ptr, ptr noundef %skb) #9
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true.if.end93_crit_edge, %if.end87.if.end93_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call61) #9
  %tobool94.not = icmp eq ptr %digits.0, null
  br i1 %tobool94.not, label %if.end93.if.end125_crit_edge, label %while.cond.preheader

if.end93.if.end125_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

while.cond.preheader:                             ; preds = %if.end93
  %50 = ptrtoint ptr %digits.0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %digits.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool96.not753 = icmp eq i8 %51, 0
  br i1 %tobool96.not753, label %while.cond.preheader.if.end125_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end125_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %name105 = getelementptr i8, ptr %ch, i32 48
  %up113 = getelementptr i8, ptr %ch, i32 44
  br label %while.body

while.body:                                       ; preds = %if.end124.while.body_crit_edge, %while.body.lr.ph
  %52 = phi i8 [ %51, %while.body.lr.ph ], [ %68, %if.end124.while.body_crit_edge ]
  %digits.1754 = phi ptr [ %digits.0, %while.body.lr.ph ], [ %incdec.ptr, %if.end124.while.body_crit_edge ]
  %53 = load i32, ptr @dsp_debug, align 4
  %and97 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %while.body.if.end108_crit_edge, label %do.end102

while.body.if.end108_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

do.end102:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv104 = zext i8 %52 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %conv104, ptr noundef %name105) #12
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %while.body.if.end108_crit_edge
  %54 = ptrtoint ptr %digits.1754 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %digits.1754, align 1
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end108.if.end124_crit_edge, label %if.then112, !prof !355

if.end108.if.end124_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then112:                                       ; preds = %if.end108
  %conv109 = zext i8 %55 to i32
  %or = or i32 %conv109, 8192
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %57, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %59, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i.i672 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4) #9
  %60 = ptrtoint ptr %call.i.i672 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %or, ptr %call.i.i672, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 2050, ptr %cb.i, align 1
  %id6.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %62 = ptrtoint ptr %id6.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 65535, ptr %id6.i, align 1
  %63 = ptrtoint ptr %up113 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %up113, align 4
  %tobool114.not = icmp eq ptr %64, null
  br i1 %tobool114.not, label %if.then112.if.end124.sink.split_crit_edge, label %if.then115

if.then112.if.end124.sink.split_crit_edge:        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.sink.split

if.then115:                                       ; preds = %if.then112
  %send117 = getelementptr inbounds %struct.mISDNchannel, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %send117 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %send117, align 4
  %call119 = tail call i32 %66(ptr noundef nonnull %64, ptr noundef nonnull %call.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then115.if.end124_crit_edge, label %if.then115.if.end124.sink.split_crit_edge

if.then115.if.end124.sink.split_crit_edge:        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.sink.split

if.then115.if.end124_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end124.sink.split:                             ; preds = %if.then115.if.end124.sink.split_crit_edge, %if.then112.if.end124.sink.split_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i) #9
  br label %if.end124

if.end124:                                        ; preds = %if.end124.sink.split, %if.then115.if.end124_crit_edge, %if.end108.if.end124_crit_edge
  %incdec.ptr = getelementptr i8, ptr %digits.1754, i32 1
  %67 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr, align 1
  %tobool96.not = icmp eq i8 %68, 0
  br i1 %tobool96.not, label %if.end124.if.end125_crit_edge, label %if.end124.while.body_crit_edge

if.end124.while.body_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end124.if.end125_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.end125:                                        ; preds = %if.end124.if.end125_crit_edge, %while.cond.preheader.if.end125_crit_edge, %if.end93.if.end125_crit_edge
  %rx_disabled126 = getelementptr i8, ptr %ch, i32 124
  %69 = ptrtoint ptr %rx_disabled126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_disabled126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool127.not = icmp eq i32 %70, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.if.then496_crit_edge

if.end125.if.then496_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.end129:                                        ; preds = %if.end125
  %71 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 12296, ptr %cb, align 1
  %up131 = getelementptr i8, ptr %ch, i32 44
  %72 = ptrtoint ptr %up131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %up131, align 4
  %tobool132.not = icmp eq ptr %73, null
  br i1 %tobool132.not, label %if.end129.if.then496_crit_edge, label %if.then133

if.end129.if.then496_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %send135 = getelementptr inbounds %struct.mISDNchannel, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %send135 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %send135, align 4
  %call137 = tail call i32 %75(ptr noundef nonnull %73, ptr noundef %skb) #9
  br label %cleanup

sw.bb139:                                         ; preds = %entry
  %76 = load i32, ptr @dsp_debug, align 4
  %and140 = and i32 %76, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %sw.bb139.if.end152_crit_edge, label %do.end145

sw.bb139.if.end152_crit_edge:                     ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.end145:                                        ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #11
  %id147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %id147 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %id147, align 1
  %len148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len148 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len148, align 4
  %name149 = getelementptr i8, ptr %ch, i32 48
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %78, i32 noundef %80, ptr noundef %name149) #12
  br label %if.end152

if.end152:                                        ; preds = %do.end145, %sw.bb139.if.end152_crit_edge
  %id153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %id153 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %id153, align 1
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %82, label %sw.default [
    i32 16384, label %sw.bb154
    i32 9729, label %sw.bb208
  ]

sw.bb154:                                         ; preds = %if.end152
  %hardware = getelementptr i8, ptr %ch, i32 220
  %84 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool156.not = icmp eq i32 %85, 0
  br i1 %tobool156.not, label %if.then157, label %if.end167

if.then157:                                       ; preds = %sw.bb154
  %86 = load i32, ptr @dsp_debug, align 4
  %and158 = and i32 %86, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.then157.if.then496_crit_edge, label %do.end163

if.then157.if.then496_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

do.end163:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24) #12
  br label %if.then496

if.end167:                                        ; preds = %sw.bb154
  %data168 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %87 = ptrtoint ptr %data168 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data168, align 4
  %len169 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %89 = ptrtoint ptr %len169 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len169, align 4
  %call170 = tail call ptr @dsp_dtmf_goertzel_decode(ptr noundef %add.ptr, ptr noundef %88, i32 noundef %90, i32 noundef 2) #9
  %91 = ptrtoint ptr %call170 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %call170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool172.not751 = icmp eq i8 %92, 0
  br i1 %tobool172.not751, label %if.end167.if.then496_crit_edge, label %while.body173.lr.ph

if.end167.if.then496_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

while.body173.lr.ph:                              ; preds = %if.end167
  %name184 = getelementptr i8, ptr %ch, i32 48
  %up193 = getelementptr i8, ptr %ch, i32 44
  br label %while.body173

while.body173:                                    ; preds = %if.end205.while.body173_crit_edge, %while.body173.lr.ph
  %93 = phi i8 [ %92, %while.body173.lr.ph ], [ %109, %if.end205.while.body173_crit_edge ]
  %digits.2752 = phi ptr [ %call170, %while.body173.lr.ph ], [ %incdec.ptr206, %if.end205.while.body173_crit_edge ]
  %94 = load i32, ptr @dsp_debug, align 4
  %and176 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %while.body173.if.end187_crit_edge, label %do.end181

while.body173.if.end187_crit_edge:                ; preds = %while.body173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

do.end181:                                        ; preds = %while.body173
  call void @__sanitizer_cov_trace_pc() #11
  %conv183 = zext i8 %93 to i32
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %conv183, ptr noundef %name184) #12
  br label %if.end187

if.end187:                                        ; preds = %do.end181, %while.body173.if.end187_crit_edge
  %95 = ptrtoint ptr %digits.2752 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %digits.2752, align 1
  %call.i.i.i673 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i.i674 = icmp eq ptr %call.i.i.i673, null
  br i1 %tobool.not.i.i674, label %if.end187.if.end205_crit_edge, label %if.then192, !prof !355

if.end187.if.end205_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then192:                                       ; preds = %if.end187
  %conv188 = zext i8 %96 to i32
  %or189 = or i32 %conv188, 8192
  %data.i.i.i675 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i673, i32 0, i32 19
  %97 = ptrtoint ptr %data.i.i.i675 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i.i675, align 4
  %add.ptr.i.i.i676 = getelementptr i8, ptr %98, i32 8
  store ptr %add.ptr.i.i.i676, ptr %data.i.i.i675, align 4
  %tail.i.i.i677 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i673, i32 0, i32 16
  %99 = ptrtoint ptr %tail.i.i.i677 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tail.i.i.i677, align 8
  %add.ptr1.i.i.i678 = getelementptr i8, ptr %100, i32 8
  store ptr %add.ptr1.i.i.i678, ptr %tail.i.i.i677, align 8
  %call.i.i679 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i673, i32 noundef 4) #9
  %101 = ptrtoint ptr %call.i.i679 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %or189, ptr %call.i.i679, align 1
  %cb.i680 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i673, i32 0, i32 3
  %102 = ptrtoint ptr %cb.i680 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 2050, ptr %cb.i680, align 1
  %id6.i681 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i673, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %id6.i681 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 65535, ptr %id6.i681, align 1
  %104 = ptrtoint ptr %up193 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %up193, align 4
  %tobool194.not = icmp eq ptr %105, null
  br i1 %tobool194.not, label %if.then192.if.end205.sink.split_crit_edge, label %if.then195

if.then192.if.end205.sink.split_crit_edge:        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205.sink.split

if.then195:                                       ; preds = %if.then192
  %send197 = getelementptr inbounds %struct.mISDNchannel, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %send197 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %send197, align 4
  %call199 = tail call i32 %107(ptr noundef nonnull %105, ptr noundef nonnull %call.i.i.i673) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then195.if.end205_crit_edge, label %if.then195.if.end205.sink.split_crit_edge

if.then195.if.end205.sink.split_crit_edge:        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205.sink.split

if.then195.if.end205_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.end205.sink.split:                             ; preds = %if.then195.if.end205.sink.split_crit_edge, %if.then192.if.end205.sink.split_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i673) #9
  br label %if.end205

if.end205:                                        ; preds = %if.end205.sink.split, %if.then195.if.end205_crit_edge, %if.end187.if.end205_crit_edge
  %incdec.ptr206 = getelementptr i8, ptr %digits.2752, i32 1
  %108 = ptrtoint ptr %incdec.ptr206 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %incdec.ptr206, align 1
  %tobool172.not = icmp eq i8 %109, 0
  br i1 %tobool172.not, label %if.end205.if.then496_crit_edge, label %if.end205.while.body173_crit_edge

if.end205.while.body173_crit_edge:                ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body173

if.end205.if.then496_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

sw.bb208:                                         ; preds = %if.end152
  %len209 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %110 = ptrtoint ptr %len209 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %111)
  %cmp210.not = icmp eq i32 %111, 4
  br i1 %cmp210.not, label %do.body215, label %sw.bb208.cleanup_crit_edge

sw.bb208.cleanup_crit_edge:                       ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body215:                                       ; preds = %sw.bb208
  %call222 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %data227 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %112 = ptrtoint ptr %data227 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data227, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %tx_volume = getelementptr i8, ptr %ch, i32 456
  %116 = ptrtoint ptr %tx_volume to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %tx_volume, align 4
  %117 = load i32, ptr @dsp_debug, align 4
  %and228 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %do.body215.if.end237_crit_edge, label %do.end233

do.body215.if.end237_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

do.end233:                                        ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #11
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.24, i32 noundef %115) #12
  br label %if.end237

if.end237:                                        ; preds = %do.end233, %do.body215.if.end237_crit_edge
  %conf238 = getelementptr i8, ptr %ch, i32 576
  %118 = ptrtoint ptr %conf238 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %conf238, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %119, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call222) #9
  br label %if.then496

sw.default:                                       ; preds = %if.end152
  %120 = load i32, ptr @dsp_debug, align 4
  %and239 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %sw.default.cleanup_crit_edge, label %do.end244

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end244:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %name247 = getelementptr i8, ptr %ch, i32 48
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.24, i32 noundef %82, ptr noundef %name247) #12
  br label %cleanup

sw.bb251:                                         ; preds = %entry.sw.bb251_crit_edge, %entry.sw.bb251_crit_edge760
  %121 = load i32, ptr @dsp_debug, align 4
  %and252 = and i32 %121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %sw.bb251.do.body264_crit_edge, label %do.end257

sw.bb251.do.body264_crit_edge:                    ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body264

do.end257:                                        ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #11
  %name259 = getelementptr i8, ptr %ch, i32 48
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, ptr noundef %name259) #12
  br label %do.body264

do.body264:                                       ; preds = %do.end257, %sw.bb251.do.body264_crit_edge
  %call271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %b_active276 = getelementptr i8, ptr %ch, i32 112
  %122 = ptrtoint ptr %b_active276 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %b_active276, align 4
  %data_pending277 = getelementptr i8, ptr %ch, i32 568
  %123 = ptrtoint ptr %data_pending277 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %data_pending277, align 4
  %rx_init = getelementptr i8, ptr %ch, i32 592
  %124 = ptrtoint ptr %rx_init to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %rx_init, align 4
  %rx_W = getelementptr i8, ptr %ch, i32 584
  %125 = ptrtoint ptr %rx_W to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %rx_W, align 4
  %rx_R = getelementptr i8, ptr %ch, i32 588
  %126 = ptrtoint ptr %rx_R to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %rx_R, align 4
  %rx_buff = getelementptr i8, ptr %ch, i32 33412
  %127 = call ptr @memset(ptr %rx_buff, i32 0, i32 32768)
  %conf279 = getelementptr i8, ptr %ch, i32 576
  %128 = ptrtoint ptr %conf279 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %conf279, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %129, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  %130 = load i32, ptr @dsp_options, align 4
  %and.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body264.dsp_rx_off.exit_crit_edge

do.body264.dsp_rx_off.exit_crit_edge:             ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit

if.end.i:                                         ; preds = %do.body264
  %131 = ptrtoint ptr %conf279 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %conf279, align 4
  %tobool1.not.i = icmp eq ptr %132, null
  br i1 %tobool1.not.i, label %if.then2.i684, label %if.end3.i

if.then2.i684:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit

if.end3.i:                                        ; preds = %if.end.i
  %mlist.i = getelementptr inbounds %struct.dsp_conf, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %mlist.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %member.018.i = load ptr, ptr %mlist.i, align 4
  %cmp.not20.i = icmp eq ptr %member.018.i, %mlist.i
  br i1 %cmp.not20.i, label %if.end3.i.dsp_rx_off.exit_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.end3.i.dsp_rx_off.exit_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %member.021.i = phi ptr [ %member.0.i, %for.body.i.for.body.i_crit_edge ], [ %member.018.i, %if.end3.i.for.body.i_crit_edge ]
  %dsp7.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i, i32 0, i32 1
  %134 = ptrtoint ptr %dsp7.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dsp7.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %135) #9
  %136 = ptrtoint ptr %member.021.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %member.0.i = load ptr, ptr %member.021.i, align 4
  %137 = ptrtoint ptr %conf279 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %conf279, align 4
  %mlist6.i = getelementptr inbounds %struct.dsp_conf, ptr %138, i32 0, i32 2
  %cmp.not.i = icmp eq ptr %member.0.i, %mlist6.i
  br i1 %cmp.not.i, label %for.body.i.dsp_rx_off.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.dsp_rx_off.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit

dsp_rx_off.exit:                                  ; preds = %for.body.i.dsp_rx_off.exit_crit_edge, %if.end3.i.dsp_rx_off.exit_crit_edge, %if.then2.i684, %do.body264.dsp_rx_off.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call271) #9
  %139 = load i32, ptr @dsp_debug, align 4
  %and280 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %dsp_rx_off.exit.if.end290_crit_edge, label %do.end285

dsp_rx_off.exit.if.end290_crit_edge:              ; preds = %dsp_rx_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end290

do.end285:                                        ; preds = %dsp_rx_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name287 = getelementptr i8, ptr %ch, i32 48
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.24, ptr noundef %name287) #12
  br label %if.end290

if.end290:                                        ; preds = %do.end285, %dsp_rx_off.exit.if.end290_crit_edge
  %140 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 20488, ptr %cb, align 1
  %up292 = getelementptr i8, ptr %ch, i32 44
  %141 = ptrtoint ptr %up292 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %up292, align 4
  %tobool293.not = icmp eq ptr %142, null
  br i1 %tobool293.not, label %if.end290.if.then496_crit_edge, label %if.then294

if.end290.if.then496_crit_edge:                   ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then294:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  %send296 = getelementptr inbounds %struct.mISDNchannel, ptr %142, i32 0, i32 7
  %143 = ptrtoint ptr %send296 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %send296, align 4
  %call298 = tail call i32 %144(ptr noundef nonnull %142, ptr noundef %skb) #9
  br label %cleanup

sw.bb300:                                         ; preds = %entry.sw.bb300_crit_edge, %entry.sw.bb300_crit_edge761
  %145 = load i32, ptr @dsp_debug, align 4
  %and301 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301)
  %tobool302.not = icmp eq i32 %and301, 0
  br i1 %tobool302.not, label %sw.bb300.do.body313_crit_edge, label %do.end306

sw.bb300.do.body313_crit_edge:                    ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body313

do.end306:                                        ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #11
  %name308 = getelementptr i8, ptr %ch, i32 48
  %call310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.24, ptr noundef %name308) #12
  br label %do.body313

do.body313:                                       ; preds = %do.end306, %sw.bb300.do.body313_crit_edge
  %call320 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %b_active325 = getelementptr i8, ptr %ch, i32 112
  %146 = ptrtoint ptr %b_active325 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %b_active325, align 4
  %data_pending326 = getelementptr i8, ptr %ch, i32 568
  %147 = ptrtoint ptr %data_pending326 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %data_pending326, align 4
  %conf327 = getelementptr i8, ptr %ch, i32 576
  %148 = ptrtoint ptr %conf327 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %conf327, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %149, ptr noundef %add.ptr) #9
  %150 = load i32, ptr @dsp_options, align 4
  %and.i685 = and i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i685)
  %tobool.not.i686 = icmp eq i32 %and.i685, 0
  br i1 %tobool.not.i686, label %if.end.i689, label %do.body313.dsp_rx_off.exit702_crit_edge

do.body313.dsp_rx_off.exit702_crit_edge:          ; preds = %do.body313
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit702

if.end.i689:                                      ; preds = %do.body313
  %151 = ptrtoint ptr %conf327 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %conf327, align 4
  %tobool1.not.i688 = icmp eq ptr %152, null
  br i1 %tobool1.not.i688, label %if.then2.i690, label %if.end3.i695

if.then2.i690:                                    ; preds = %if.end.i689
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit702

if.end3.i695:                                     ; preds = %if.end.i689
  %mlist.i691 = getelementptr inbounds %struct.dsp_conf, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %mlist.i691 to i32
  call void @__asan_load4_noabort(i32 %153)
  %member.018.i692 = load ptr, ptr %mlist.i691, align 4
  %cmp.not20.i694 = icmp eq ptr %member.018.i692, %mlist.i691
  br i1 %cmp.not20.i694, label %if.end3.i695.dsp_rx_off.exit702_crit_edge, label %if.end3.i695.for.body.i701_crit_edge

if.end3.i695.for.body.i701_crit_edge:             ; preds = %if.end3.i695
  br label %for.body.i701

if.end3.i695.dsp_rx_off.exit702_crit_edge:        ; preds = %if.end3.i695
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit702

for.body.i701:                                    ; preds = %for.body.i701.for.body.i701_crit_edge, %if.end3.i695.for.body.i701_crit_edge
  %member.021.i696 = phi ptr [ %member.0.i698, %for.body.i701.for.body.i701_crit_edge ], [ %member.018.i692, %if.end3.i695.for.body.i701_crit_edge ]
  %dsp7.i697 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i696, i32 0, i32 1
  %154 = ptrtoint ptr %dsp7.i697 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dsp7.i697, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %155) #9
  %156 = ptrtoint ptr %member.021.i696 to i32
  call void @__asan_load4_noabort(i32 %156)
  %member.0.i698 = load ptr, ptr %member.021.i696, align 4
  %157 = ptrtoint ptr %conf327 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %conf327, align 4
  %mlist6.i699 = getelementptr inbounds %struct.dsp_conf, ptr %158, i32 0, i32 2
  %cmp.not.i700 = icmp eq ptr %member.0.i698, %mlist6.i699
  br i1 %cmp.not.i700, label %for.body.i701.dsp_rx_off.exit702_crit_edge, label %for.body.i701.for.body.i701_crit_edge

for.body.i701.for.body.i701_crit_edge:            ; preds = %for.body.i701
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i701

for.body.i701.dsp_rx_off.exit702_crit_edge:       ; preds = %for.body.i701
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit702

dsp_rx_off.exit702:                               ; preds = %for.body.i701.dsp_rx_off.exit702_crit_edge, %if.end3.i695.dsp_rx_off.exit702_crit_edge, %if.then2.i690, %do.body313.dsp_rx_off.exit702_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call320) #9
  %159 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 20744, ptr %cb, align 1
  %up329 = getelementptr i8, ptr %ch, i32 44
  %160 = ptrtoint ptr %up329 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %up329, align 4
  %tobool330.not = icmp eq ptr %161, null
  br i1 %tobool330.not, label %dsp_rx_off.exit702.if.then496_crit_edge, label %if.then331

dsp_rx_off.exit702.if.then496_crit_edge:          ; preds = %dsp_rx_off.exit702
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then331:                                       ; preds = %dsp_rx_off.exit702
  call void @__sanitizer_cov_trace_pc() #11
  %send333 = getelementptr inbounds %struct.mISDNchannel, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %send333 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %send333, align 4
  %call335 = tail call i32 %163(ptr noundef nonnull %161, ptr noundef %skb) #9
  br label %cleanup

sw.bb337:                                         ; preds = %entry.sw.bb337_crit_edge, %entry.sw.bb337_crit_edge762
  %len338 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %164 = ptrtoint ptr %len338 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp339 = icmp eq i32 %165, 0
  br i1 %cmp339, label %sw.bb337.cleanup_crit_edge, label %if.end342

sw.bb337.cleanup_crit_edge:                       ; preds = %sw.bb337
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end342:                                        ; preds = %sw.bb337
  %hdlc343 = getelementptr i8, ptr %ch, i32 564
  %166 = ptrtoint ptr %hdlc343 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %hdlc343, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool344.not = icmp eq i32 %167, 0
  br i1 %tobool344.not, label %if.end366, label %if.then345

if.then345:                                       ; preds = %if.end342
  %b_active346 = getelementptr i8, ptr %ch, i32 112
  %168 = ptrtoint ptr %b_active346 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %b_active346, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool347.not = icmp eq i32 %169, 0
  br i1 %tobool347.not, label %if.then345.cleanup_crit_edge, label %if.end349

if.then345.cleanup_crit_edge:                     ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end349:                                        ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 8193, ptr %cb, align 1
  %call359 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %sendq = getelementptr i8, ptr %ch, i32 508
  tail call void @skb_queue_tail(ptr noundef %sendq, ptr noundef %skb) #9
  %workq364 = getelementptr i8, ptr %ch, i32 464
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %171 = load ptr, ptr @system_wq, align 4
  %call.i.i703 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %171, ptr noundef %workq364) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call359) #9
  br label %cleanup

if.end366:                                        ; preds = %if.end342
  %tone367 = getelementptr i8, ptr %ch, i32 144
  %172 = ptrtoint ptr %tone367 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tone367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool368.not = icmp eq i32 %173, 0
  br i1 %tobool368.not, label %do.body371, label %if.end366.if.then496_crit_edge

if.end366.if.then496_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

do.body371:                                       ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #11
  %call378 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  tail call void @dsp_cmx_transmit(ptr noundef %add.ptr, ptr noundef %skb) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call378) #9
  br label %if.then496

do.body386:                                       ; preds = %entry
  %call393 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cont.i) #9
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %174 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp.i = icmp ult i32 %175, 4
  br i1 %cmp.i, label %do.end.i, label %if.end.i704

do.end.i:                                         ; preds = %do.body386
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #12
  br label %sw.epilog494.thread747

if.end.i704:                                      ; preds = %do.body386
  %data2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %176 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data2.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %180 = ptrtoint ptr %cont.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %cont.i, align 4
  %sub.i = add i32 %175, -4
  %add.ptr.i = getelementptr i8, ptr %177, i32 4
  %181 = zext i32 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %179, label %sw.default.i [
    i32 8448, label %sw.bb.i
    i32 8704, label %sw.bb28.i
    i32 9219, label %sw.bb42.i
    i32 9220, label %if.end.i704.conf_split.i_crit_edge
    i32 9233, label %sw.bb78.i
    i32 9234, label %sw.bb104.i
    i32 9235, label %sw.bb120.i
    i32 9236, label %sw.bb139.i
    i32 9223, label %sw.bb158.i
    i32 9224, label %sw.bb174.i
    i32 9222, label %sw.bb193.i
    i32 9221, label %sw.bb203.i
    i32 9225, label %sw.bb214.i
    i32 9226, label %sw.bb233.i
    i32 9229, label %sw.bb253.i
    i32 9230, label %sw.bb268.i
    i32 9227, label %sw.bb284.i
    i32 9228, label %sw.bb307.i
    i32 9231, label %sw.bb322.i
    i32 9232, label %sw.bb336.i
    i32 9240, label %sw.bb351.i
    i32 9237, label %sw.bb372.i
    i32 9238, label %sw.bb415.i
  ]

if.end.i704.conf_split.i_crit_edge:               ; preds = %if.end.i704
  call void @__sanitizer_cov_trace_pc() #11
  br label %conf_split.i

sw.bb.i:                                          ; preds = %if.end.i704
  %hdlc.i = getelementptr i8, ptr %ch, i32 564
  %182 = ptrtoint ptr %hdlc.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %hdlc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i705 = icmp eq i32 %183, 0
  br i1 %tobool.not.i705, label %if.end6.i, label %sw.bb.i.sw.epilog494.thread747_crit_edge

sw.bb.i.sw.epilog494.thread747_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end6.i:                                        ; preds = %sw.bb.i
  %184 = load i32, ptr @dsp_debug, align 4
  %and.i706 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i706)
  %tobool7.not.i = icmp eq i32 %and.i706, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end14.i_crit_edge, label %do.end11.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

do.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end11.i, %if.end6.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp15.i = icmp eq i32 %sub.i, 4
  br i1 %cmp15.i, label %if.then16.i, label %if.end14.i.if.end26.i_crit_edge

if.end14.i.if.end26.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then16.i:                                      ; preds = %if.end14.i
  %185 = load i32, ptr @dsp_debug, align 4
  %and17.i = and i32 %185, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end25.i_crit_edge, label %do.end22.i

if.then16.i.if.end25.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

do.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %187) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end22.i, %if.then16.i.if.end25.i_crit_edge
  %188 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr.i, align 4
  %mul.i = mul i32 %189, 10000
  %treshold.i = getelementptr i8, ptr %ch, i32 212
  %190 = ptrtoint ptr %treshold.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %mul.i, ptr %treshold.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end25.i, %if.end14.i.if.end26.i_crit_edge
  %dtmf27.i = getelementptr i8, ptr %ch, i32 208
  %191 = ptrtoint ptr %dtmf27.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %dtmf27.i, align 4
  tail call void @dsp_dtmf_goertzel_init(ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb28.i:                                        ; preds = %if.end.i704
  %192 = load i32, ptr @dsp_debug, align 4
  %and29.i = and i32 %192, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %sw.bb28.i.if.end37.i_crit_edge, label %do.end34.i

sw.bb28.i.if.end37.i_crit_edge:                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

do.end34.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.69) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %sw.bb28.i.if.end37.i_crit_edge
  %dtmf38.i = getelementptr i8, ptr %ch, i32 208
  %193 = ptrtoint ptr %dtmf38.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %dtmf38.i, align 4
  %hardware.i = getelementptr i8, ptr %ch, i32 220
  %194 = ptrtoint ptr %hardware.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %hardware.i, align 4
  %software.i = getelementptr i8, ptr %ch, i32 216
  %195 = ptrtoint ptr %software.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %software.i, align 4
  br label %sw.epilog494.thread743

sw.bb42.i:                                        ; preds = %if.end.i704
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp43.i = icmp ult i32 %sub.i, 4
  br i1 %cmp43.i, label %sw.bb42.i.sw.epilog494.thread747_crit_edge, label %if.end45.i

sw.bb42.i.sw.epilog494.thread747_crit_edge:       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end45.i:                                       ; preds = %sw.bb42.i
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp46.i = icmp eq i32 %197, 0
  br i1 %cmp46.i, label %if.end45.i.conf_split.i_crit_edge, label %if.end48.i

if.end45.i.conf_split.i_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %conf_split.i

if.end48.i:                                       ; preds = %if.end45.i
  %198 = load i32, ptr @dsp_debug, align 4
  %and49.i = and i32 %198, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end57.i_crit_edge, label %do.end54.i

if.end48.i.if.end57.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.69, i32 noundef %197) #12
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end54.i, %if.end48.i.if.end57.i_crit_edge
  %199 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i, align 4
  %call58.i = tail call i32 @dsp_cmx_conf(ptr noundef %add.ptr, i32 noundef %200) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  %201 = load i32, ptr @dsp_debug, align 4
  %and59.i = and i32 %201, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.sw.epilog494_crit_edge, label %if.then61.i

if.end57.i.sw.epilog494_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494

conf_split.i:                                     ; preds = %if.end45.i.conf_split.i_crit_edge, %if.end.i704.conf_split.i_crit_edge
  %202 = load i32, ptr @dsp_debug, align 4
  %and64.i = and i32 %202, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %conf_split.i.if.end72.i_crit_edge, label %do.end69.i

conf_split.i.if.end72.i_crit_edge:                ; preds = %conf_split.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

do.end69.i:                                       ; preds = %conf_split.i
  call void @__sanitizer_cov_trace_pc() #11
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.69) #12
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end69.i, %conf_split.i.if.end72.i_crit_edge
  %call73.i = tail call i32 @dsp_cmx_conf(ptr noundef %add.ptr, i32 noundef 0) #9
  %203 = load i32, ptr @dsp_debug, align 4
  %and74.i = and i32 %203, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end77.i_crit_edge, label %if.then76.i

if.end72.i.if.end77.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end77.i_crit_edge
  %204 = load i32, ptr @dsp_options, align 4
  %and.i.i = and i32 %204, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i707 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i707, label %if.end.i.i, label %if.end77.i.sw.epilog494_crit_edge

if.end77.i.sw.epilog494_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494

if.end.i.i:                                       ; preds = %if.end77.i
  %conf.i.i = getelementptr i8, ptr %ch, i32 576
  %205 = ptrtoint ptr %conf.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %conf.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %206, null
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %sw.epilog494

if.end3.i.i:                                      ; preds = %if.end.i.i
  %mlist.i.i = getelementptr inbounds %struct.dsp_conf, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %mlist.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %member.018.i.i = load ptr, ptr %mlist.i.i, align 4
  %cmp.not20.i.i = icmp eq ptr %member.018.i.i, %mlist.i.i
  br i1 %cmp.not20.i.i, label %if.end3.i.i.sw.epilog494_crit_edge, label %if.end3.i.i.for.body.i.i_crit_edge

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  br label %for.body.i.i

if.end3.i.i.sw.epilog494_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end3.i.i.for.body.i.i_crit_edge
  %member.021.i.i = phi ptr [ %member.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %member.018.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  %dsp7.i.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %dsp7.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dsp7.i.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %209) #9
  %210 = ptrtoint ptr %member.021.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %member.0.i.i = load ptr, ptr %member.021.i.i, align 4
  %211 = ptrtoint ptr %conf.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %conf.i.i, align 4
  %mlist6.i.i = getelementptr inbounds %struct.dsp_conf, ptr %212, i32 0, i32 2
  %cmp.not.i.i = icmp eq ptr %member.0.i.i, %mlist6.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.sw.epilog494_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.sw.epilog494_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494

sw.bb78.i:                                        ; preds = %if.end.i704
  %hdlc79.i = getelementptr i8, ptr %ch, i32 564
  %213 = ptrtoint ptr %hdlc79.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %hdlc79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool80.not.i = icmp ne i32 %214, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp83.i = icmp ult i32 %sub.i, 4
  %or.cond3.i = select i1 %tobool80.not.i, i1 true, i1 %cmp83.i
  br i1 %or.cond3.i, label %sw.bb78.i.sw.epilog494.thread747_crit_edge, label %if.end85.i

sw.bb78.i.sw.epilog494.thread747_crit_edge:       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end85.i:                                       ; preds = %sw.bb78.i
  %215 = load i32, ptr @dsp_debug, align 4
  %and86.i = and i32 %215, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end85.i.if.end95.i_crit_edge, label %do.end91.i

if.end85.i.if.end95.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

do.end91.i:                                       ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.69, i32 noundef 9233) #12
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end91.i, %if.end85.i.if.end95.i_crit_edge
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %add.ptr.i, align 4
  %call96.i = tail call i32 @dsp_tone(ptr noundef %add.ptr, i32 noundef %217) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.then98.i, label %if.end95.i.if.end99.i_crit_edge

if.end95.i.if.end99.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %conf.i708 = getelementptr i8, ptr %ch, i32 576
  %218 = ptrtoint ptr %conf.i708 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %conf.i708, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %219, ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.end95.i.if.end99.i_crit_edge
  %tone100.i = getelementptr i8, ptr %ch, i32 144
  %220 = ptrtoint ptr %tone100.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tone100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool101.not.i = icmp eq i32 %221, 0
  br i1 %tobool101.not.i, label %if.end99.i.tone_off.i_crit_edge, label %if.end99.i.sw.epilog494_crit_edge

if.end99.i.sw.epilog494_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494

if.end99.i.tone_off.i_crit_edge:                  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tone_off.i

sw.bb104.i:                                       ; preds = %if.end.i704
  %hdlc105.i = getelementptr i8, ptr %ch, i32 564
  %222 = ptrtoint ptr %hdlc105.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %hdlc105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool106.not.i = icmp eq i32 %223, 0
  br i1 %tobool106.not.i, label %if.end108.i, label %sw.bb104.i.sw.epilog494.thread747_crit_edge

sw.bb104.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end108.i:                                      ; preds = %sw.bb104.i
  %224 = load i32, ptr @dsp_debug, align 4
  %and109.i = and i32 %224, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.end108.i.if.end117.i_crit_edge, label %do.end114.i

if.end108.i.if.end117.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117.i

do.end114.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  %call116.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.69) #12
  br label %if.end117.i

if.end117.i:                                      ; preds = %do.end114.i, %if.end108.i.if.end117.i_crit_edge
  %call118.i = tail call i32 @dsp_tone(ptr noundef %add.ptr, i32 noundef 0) #9
  %conf119.i = getelementptr i8, ptr %ch, i32 576
  %225 = ptrtoint ptr %conf119.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %conf119.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %226, ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %tone_off.i

tone_off.i:                                       ; preds = %if.end117.i, %if.end99.i.tone_off.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end117.i ], [ %call96.i, %if.end99.i.tone_off.i_crit_edge ]
  %rx_W.i = getelementptr i8, ptr %ch, i32 584
  %227 = ptrtoint ptr %rx_W.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %rx_W.i, align 4
  %rx_R.i = getelementptr i8, ptr %ch, i32 588
  %228 = ptrtoint ptr %rx_R.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %rx_R.i, align 4
  br label %sw.epilog494

sw.bb120.i:                                       ; preds = %if.end.i704
  %hdlc121.i = getelementptr i8, ptr %ch, i32 564
  %229 = ptrtoint ptr %hdlc121.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %hdlc121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool122.not.i = icmp ne i32 %230, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp125.i = icmp ult i32 %sub.i, 4
  %or.cond4.i = select i1 %tobool122.not.i, i1 true, i1 %cmp125.i
  br i1 %or.cond4.i, label %sw.bb120.i.sw.epilog494.thread747_crit_edge, label %if.end127.i

sw.bb120.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end127.i:                                      ; preds = %sw.bb120.i
  %231 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %add.ptr.i, align 4
  %tx_volume.i = getelementptr i8, ptr %ch, i32 456
  %233 = ptrtoint ptr %tx_volume.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %tx_volume.i, align 4
  %234 = load i32, ptr @dsp_debug, align 4
  %and128.i = and i32 %234, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i)
  %tobool129.not.i = icmp eq i32 %and128.i, 0
  br i1 %tobool129.not.i, label %if.end127.i.if.end137.i_crit_edge, label %do.end133.i

if.end127.i.if.end137.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

do.end133.i:                                      ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.69, i32 noundef %232) #12
  br label %if.end137.i

if.end137.i:                                      ; preds = %do.end133.i, %if.end127.i.if.end137.i_crit_edge
  %conf138.i = getelementptr i8, ptr %ch, i32 576
  %235 = ptrtoint ptr %conf138.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %conf138.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %236, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb139.i:                                       ; preds = %if.end.i704
  %hdlc140.i = getelementptr i8, ptr %ch, i32 564
  %237 = ptrtoint ptr %hdlc140.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %hdlc140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool141.not.i = icmp ne i32 %238, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp144.i = icmp ult i32 %sub.i, 4
  %or.cond5.i = select i1 %tobool141.not.i, i1 true, i1 %cmp144.i
  br i1 %or.cond5.i, label %sw.bb139.i.sw.epilog494.thread747_crit_edge, label %if.end146.i

sw.bb139.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end146.i:                                      ; preds = %sw.bb139.i
  %239 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %add.ptr.i, align 4
  %rx_volume.i = getelementptr i8, ptr %ch, i32 460
  %241 = ptrtoint ptr %rx_volume.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %rx_volume.i, align 4
  %242 = load i32, ptr @dsp_debug, align 4
  %and147.i = and i32 %242, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.i)
  %tobool148.not.i = icmp eq i32 %and147.i, 0
  br i1 %tobool148.not.i, label %if.end146.i.if.end156.i_crit_edge, label %do.end152.i

if.end146.i.if.end156.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156.i

do.end152.i:                                      ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_volume154.i = getelementptr i8, ptr %ch, i32 456
  %243 = ptrtoint ptr %tx_volume154.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %tx_volume154.i, align 4
  %call155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.69, i32 noundef %244) #12
  br label %if.end156.i

if.end156.i:                                      ; preds = %do.end152.i, %if.end146.i.if.end156.i_crit_edge
  %conf157.i = getelementptr i8, ptr %ch, i32 576
  %245 = ptrtoint ptr %conf157.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %conf157.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %246, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb158.i:                                       ; preds = %if.end.i704
  %echo.i = getelementptr i8, ptr %ch, i32 116
  %247 = ptrtoint ptr %echo.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 1, ptr %echo.i, align 4
  %248 = load i32, ptr @dsp_debug, align 4
  %and160.i = and i32 %248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  br i1 %tobool161.not.i, label %sw.bb158.i.if.end168.i_crit_edge, label %do.end165.i

sw.bb158.i.if.end168.i_crit_edge:                 ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i

do.end165.i:                                      ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #11
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.69) #12
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end165.i, %sw.bb158.i.if.end168.i_crit_edge
  %conf169.i = getelementptr i8, ptr %ch, i32 576
  %249 = ptrtoint ptr %conf169.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %conf169.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %250, ptr noundef %add.ptr) #9
  %251 = load i32, ptr @dsp_options, align 4
  %and.i7.i = and i32 %251, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i11.i, label %if.end168.i.dsp_rx_off.exit24.i_crit_edge

if.end168.i.dsp_rx_off.exit24.i_crit_edge:        ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit24.i

if.end.i11.i:                                     ; preds = %if.end168.i
  %252 = ptrtoint ptr %conf169.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %conf169.i, align 4
  %tobool1.not.i10.i = icmp eq ptr %253, null
  br i1 %tobool1.not.i10.i, label %if.then2.i12.i, label %if.end3.i17.i

if.then2.i12.i:                                   ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit24.i

if.end3.i17.i:                                    ; preds = %if.end.i11.i
  %mlist.i13.i = getelementptr inbounds %struct.dsp_conf, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %mlist.i13.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %member.018.i14.i = load ptr, ptr %mlist.i13.i, align 4
  %cmp.not20.i16.i = icmp eq ptr %member.018.i14.i, %mlist.i13.i
  br i1 %cmp.not20.i16.i, label %if.end3.i17.i.dsp_rx_off.exit24.i_crit_edge, label %if.end3.i17.i.for.body.i23.i_crit_edge

if.end3.i17.i.for.body.i23.i_crit_edge:           ; preds = %if.end3.i17.i
  br label %for.body.i23.i

if.end3.i17.i.dsp_rx_off.exit24.i_crit_edge:      ; preds = %if.end3.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit24.i

for.body.i23.i:                                   ; preds = %for.body.i23.i.for.body.i23.i_crit_edge, %if.end3.i17.i.for.body.i23.i_crit_edge
  %member.021.i18.i = phi ptr [ %member.0.i20.i, %for.body.i23.i.for.body.i23.i_crit_edge ], [ %member.018.i14.i, %if.end3.i17.i.for.body.i23.i_crit_edge ]
  %dsp7.i19.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i18.i, i32 0, i32 1
  %255 = ptrtoint ptr %dsp7.i19.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dsp7.i19.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %256) #9
  %257 = ptrtoint ptr %member.021.i18.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %member.0.i20.i = load ptr, ptr %member.021.i18.i, align 4
  %258 = ptrtoint ptr %conf169.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %conf169.i, align 4
  %mlist6.i21.i = getelementptr inbounds %struct.dsp_conf, ptr %259, i32 0, i32 2
  %cmp.not.i22.i = icmp eq ptr %member.0.i20.i, %mlist6.i21.i
  br i1 %cmp.not.i22.i, label %for.body.i23.i.dsp_rx_off.exit24.i_crit_edge, label %for.body.i23.i.for.body.i23.i_crit_edge

for.body.i23.i.for.body.i23.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23.i

for.body.i23.i.dsp_rx_off.exit24.i_crit_edge:     ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit24.i

dsp_rx_off.exit24.i:                              ; preds = %for.body.i23.i.dsp_rx_off.exit24.i_crit_edge, %if.end3.i17.i.dsp_rx_off.exit24.i_crit_edge, %if.then2.i12.i, %if.end168.i.dsp_rx_off.exit24.i_crit_edge
  %260 = load i32, ptr @dsp_debug, align 4
  %and170.i = and i32 %260, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %dsp_rx_off.exit24.i.sw.epilog494.thread743_crit_edge, label %if.then172.i

dsp_rx_off.exit24.i.sw.epilog494.thread743_crit_edge: ; preds = %dsp_rx_off.exit24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then172.i:                                     ; preds = %dsp_rx_off.exit24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb174.i:                                       ; preds = %if.end.i704
  %echo175.i = getelementptr i8, ptr %ch, i32 116
  %261 = ptrtoint ptr %echo175.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %echo175.i, align 4
  %hardware178.i = getelementptr i8, ptr %ch, i32 120
  %262 = ptrtoint ptr %hardware178.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %hardware178.i, align 4
  %263 = load i32, ptr @dsp_debug, align 4
  %and179.i = and i32 %263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %sw.bb174.i.if.end187.i_crit_edge, label %do.end184.i

sw.bb174.i.if.end187.i_crit_edge:                 ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

do.end184.i:                                      ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #11
  %call186.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.69) #12
  br label %if.end187.i

if.end187.i:                                      ; preds = %do.end184.i, %sw.bb174.i.if.end187.i_crit_edge
  %conf188.i = getelementptr i8, ptr %ch, i32 576
  %264 = ptrtoint ptr %conf188.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %conf188.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %265, ptr noundef %add.ptr) #9
  %266 = load i32, ptr @dsp_options, align 4
  %and.i25.i = and i32 %266, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i26.i = icmp eq i32 %and.i25.i, 0
  br i1 %tobool.not.i26.i, label %if.end.i29.i, label %if.end187.i.dsp_rx_off.exit42.i_crit_edge

if.end187.i.dsp_rx_off.exit42.i_crit_edge:        ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit42.i

if.end.i29.i:                                     ; preds = %if.end187.i
  %267 = ptrtoint ptr %conf188.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %conf188.i, align 4
  %tobool1.not.i28.i = icmp eq ptr %268, null
  br i1 %tobool1.not.i28.i, label %if.then2.i30.i, label %if.end3.i35.i

if.then2.i30.i:                                   ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit42.i

if.end3.i35.i:                                    ; preds = %if.end.i29.i
  %mlist.i31.i = getelementptr inbounds %struct.dsp_conf, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %mlist.i31.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %member.018.i32.i = load ptr, ptr %mlist.i31.i, align 4
  %cmp.not20.i34.i = icmp eq ptr %member.018.i32.i, %mlist.i31.i
  br i1 %cmp.not20.i34.i, label %if.end3.i35.i.dsp_rx_off.exit42.i_crit_edge, label %if.end3.i35.i.for.body.i41.i_crit_edge

if.end3.i35.i.for.body.i41.i_crit_edge:           ; preds = %if.end3.i35.i
  br label %for.body.i41.i

if.end3.i35.i.dsp_rx_off.exit42.i_crit_edge:      ; preds = %if.end3.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit42.i

for.body.i41.i:                                   ; preds = %for.body.i41.i.for.body.i41.i_crit_edge, %if.end3.i35.i.for.body.i41.i_crit_edge
  %member.021.i36.i = phi ptr [ %member.0.i38.i, %for.body.i41.i.for.body.i41.i_crit_edge ], [ %member.018.i32.i, %if.end3.i35.i.for.body.i41.i_crit_edge ]
  %dsp7.i37.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i36.i, i32 0, i32 1
  %270 = ptrtoint ptr %dsp7.i37.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dsp7.i37.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %271) #9
  %272 = ptrtoint ptr %member.021.i36.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %member.0.i38.i = load ptr, ptr %member.021.i36.i, align 4
  %273 = ptrtoint ptr %conf188.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %conf188.i, align 4
  %mlist6.i39.i = getelementptr inbounds %struct.dsp_conf, ptr %274, i32 0, i32 2
  %cmp.not.i40.i = icmp eq ptr %member.0.i38.i, %mlist6.i39.i
  br i1 %cmp.not.i40.i, label %for.body.i41.i.dsp_rx_off.exit42.i_crit_edge, label %for.body.i41.i.for.body.i41.i_crit_edge

for.body.i41.i.for.body.i41.i_crit_edge:          ; preds = %for.body.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i41.i

for.body.i41.i.dsp_rx_off.exit42.i_crit_edge:     ; preds = %for.body.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit42.i

dsp_rx_off.exit42.i:                              ; preds = %for.body.i41.i.dsp_rx_off.exit42.i_crit_edge, %if.end3.i35.i.dsp_rx_off.exit42.i_crit_edge, %if.then2.i30.i, %if.end187.i.dsp_rx_off.exit42.i_crit_edge
  %275 = load i32, ptr @dsp_debug, align 4
  %and189.i = and i32 %275, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189.i)
  %tobool190.not.i = icmp eq i32 %and189.i, 0
  br i1 %tobool190.not.i, label %dsp_rx_off.exit42.i.sw.epilog494.thread743_crit_edge, label %if.then191.i

dsp_rx_off.exit42.i.sw.epilog494.thread743_crit_edge: ; preds = %dsp_rx_off.exit42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then191.i:                                     ; preds = %dsp_rx_off.exit42.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb193.i:                                       ; preds = %if.end.i704
  %276 = load i32, ptr @dsp_debug, align 4
  %and194.i = and i32 %276, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %sw.bb193.i.if.end202.i_crit_edge, label %do.end199.i

sw.bb193.i.if.end202.i_crit_edge:                 ; preds = %sw.bb193.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202.i

do.end199.i:                                      ; preds = %sw.bb193.i
  call void @__sanitizer_cov_trace_pc() #11
  %call201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.69) #12
  br label %if.end202.i

if.end202.i:                                      ; preds = %do.end199.i, %sw.bb193.i.if.end202.i_crit_edge
  %rx_disabled.i = getelementptr i8, ptr %ch, i32 124
  %277 = ptrtoint ptr %rx_disabled.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 0, ptr %rx_disabled.i, align 4
  %278 = load i32, ptr @dsp_options, align 4
  %and.i43.i = and i32 %278, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i)
  %tobool.not.i44.i = icmp eq i32 %and.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end.i47.i, label %if.end202.i.sw.epilog494.thread743_crit_edge

if.end202.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.end.i47.i:                                     ; preds = %if.end202.i
  %conf.i45.i = getelementptr i8, ptr %ch, i32 576
  %279 = ptrtoint ptr %conf.i45.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %conf.i45.i, align 4
  %tobool1.not.i46.i = icmp eq ptr %280, null
  br i1 %tobool1.not.i46.i, label %if.then2.i48.i, label %if.end3.i53.i

if.then2.i48.i:                                   ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

if.end3.i53.i:                                    ; preds = %if.end.i47.i
  %mlist.i49.i = getelementptr inbounds %struct.dsp_conf, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %mlist.i49.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %member.018.i50.i = load ptr, ptr %mlist.i49.i, align 4
  %cmp.not20.i52.i = icmp eq ptr %member.018.i50.i, %mlist.i49.i
  br i1 %cmp.not20.i52.i, label %if.end3.i53.i.sw.epilog494.thread743_crit_edge, label %if.end3.i53.i.for.body.i59.i_crit_edge

if.end3.i53.i.for.body.i59.i_crit_edge:           ; preds = %if.end3.i53.i
  br label %for.body.i59.i

if.end3.i53.i.sw.epilog494.thread743_crit_edge:   ; preds = %if.end3.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

for.body.i59.i:                                   ; preds = %for.body.i59.i.for.body.i59.i_crit_edge, %if.end3.i53.i.for.body.i59.i_crit_edge
  %member.021.i54.i = phi ptr [ %member.0.i56.i, %for.body.i59.i.for.body.i59.i_crit_edge ], [ %member.018.i50.i, %if.end3.i53.i.for.body.i59.i_crit_edge ]
  %dsp7.i55.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i54.i, i32 0, i32 1
  %282 = ptrtoint ptr %dsp7.i55.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dsp7.i55.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %283) #9
  %284 = ptrtoint ptr %member.021.i54.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %member.0.i56.i = load ptr, ptr %member.021.i54.i, align 4
  %285 = ptrtoint ptr %conf.i45.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %conf.i45.i, align 4
  %mlist6.i57.i = getelementptr inbounds %struct.dsp_conf, ptr %286, i32 0, i32 2
  %cmp.not.i58.i = icmp eq ptr %member.0.i56.i, %mlist6.i57.i
  br i1 %cmp.not.i58.i, label %for.body.i59.i.sw.epilog494.thread743_crit_edge, label %for.body.i59.i.for.body.i59.i_crit_edge

for.body.i59.i.for.body.i59.i_crit_edge:          ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i59.i

for.body.i59.i.sw.epilog494.thread743_crit_edge:  ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

sw.bb203.i:                                       ; preds = %if.end.i704
  %287 = load i32, ptr @dsp_debug, align 4
  %and204.i = and i32 %287, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204.i)
  %tobool205.not.i = icmp eq i32 %and204.i, 0
  br i1 %tobool205.not.i, label %sw.bb203.i.if.end212.i_crit_edge, label %do.end209.i

sw.bb203.i.if.end212.i_crit_edge:                 ; preds = %sw.bb203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212.i

do.end209.i:                                      ; preds = %sw.bb203.i
  call void @__sanitizer_cov_trace_pc() #11
  %call211.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.69) #12
  br label %if.end212.i

if.end212.i:                                      ; preds = %do.end209.i, %sw.bb203.i.if.end212.i_crit_edge
  %rx_disabled213.i = getelementptr i8, ptr %ch, i32 124
  %288 = ptrtoint ptr %rx_disabled213.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 1, ptr %rx_disabled213.i, align 4
  %289 = load i32, ptr @dsp_options, align 4
  %and.i61.i = and i32 %289, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i62.i = icmp eq i32 %and.i61.i, 0
  br i1 %tobool.not.i62.i, label %if.end.i65.i, label %if.end212.i.sw.epilog494.thread743_crit_edge

if.end212.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.end.i65.i:                                     ; preds = %if.end212.i
  %conf.i63.i = getelementptr i8, ptr %ch, i32 576
  %290 = ptrtoint ptr %conf.i63.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %conf.i63.i, align 4
  %tobool1.not.i64.i = icmp eq ptr %291, null
  br i1 %tobool1.not.i64.i, label %if.then2.i66.i, label %if.end3.i71.i

if.then2.i66.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

if.end3.i71.i:                                    ; preds = %if.end.i65.i
  %mlist.i67.i = getelementptr inbounds %struct.dsp_conf, ptr %291, i32 0, i32 2
  %292 = ptrtoint ptr %mlist.i67.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %member.018.i68.i = load ptr, ptr %mlist.i67.i, align 4
  %cmp.not20.i70.i = icmp eq ptr %member.018.i68.i, %mlist.i67.i
  br i1 %cmp.not20.i70.i, label %if.end3.i71.i.sw.epilog494.thread743_crit_edge, label %if.end3.i71.i.for.body.i77.i_crit_edge

if.end3.i71.i.for.body.i77.i_crit_edge:           ; preds = %if.end3.i71.i
  br label %for.body.i77.i

if.end3.i71.i.sw.epilog494.thread743_crit_edge:   ; preds = %if.end3.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

for.body.i77.i:                                   ; preds = %for.body.i77.i.for.body.i77.i_crit_edge, %if.end3.i71.i.for.body.i77.i_crit_edge
  %member.021.i72.i = phi ptr [ %member.0.i74.i, %for.body.i77.i.for.body.i77.i_crit_edge ], [ %member.018.i68.i, %if.end3.i71.i.for.body.i77.i_crit_edge ]
  %dsp7.i73.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i72.i, i32 0, i32 1
  %293 = ptrtoint ptr %dsp7.i73.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dsp7.i73.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %294) #9
  %295 = ptrtoint ptr %member.021.i72.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %member.0.i74.i = load ptr, ptr %member.021.i72.i, align 4
  %296 = ptrtoint ptr %conf.i63.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %conf.i63.i, align 4
  %mlist6.i75.i = getelementptr inbounds %struct.dsp_conf, ptr %297, i32 0, i32 2
  %cmp.not.i76.i = icmp eq ptr %member.0.i74.i, %mlist6.i75.i
  br i1 %cmp.not.i76.i, label %for.body.i77.i.sw.epilog494.thread743_crit_edge, label %for.body.i77.i.for.body.i77.i_crit_edge

for.body.i77.i.for.body.i77.i_crit_edge:          ; preds = %for.body.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i77.i

for.body.i77.i.sw.epilog494.thread743_crit_edge:  ; preds = %for.body.i77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

sw.bb214.i:                                       ; preds = %if.end.i704
  %hdlc215.i = getelementptr i8, ptr %ch, i32 564
  %298 = ptrtoint ptr %hdlc215.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %hdlc215.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool216.not.i = icmp eq i32 %299, 0
  br i1 %tobool216.not.i, label %if.end218.i, label %sw.bb214.i.sw.epilog494.thread747_crit_edge

sw.bb214.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end218.i:                                      ; preds = %sw.bb214.i
  %300 = load i32, ptr @dsp_debug, align 4
  %and219.i = and i32 %300, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219.i)
  %tobool220.not.i = icmp eq i32 %and219.i, 0
  br i1 %tobool220.not.i, label %if.end218.i.if.end227.i_crit_edge, label %do.end224.i

if.end218.i.if.end227.i_crit_edge:                ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227.i

do.end224.i:                                      ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #11
  %call226.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.69) #12
  br label %if.end227.i

if.end227.i:                                      ; preds = %do.end224.i, %if.end218.i.if.end227.i_crit_edge
  %tx_mix.i = getelementptr i8, ptr %ch, i32 132
  %301 = ptrtoint ptr %tx_mix.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 1, ptr %tx_mix.i, align 4
  %conf228.i = getelementptr i8, ptr %ch, i32 576
  %302 = ptrtoint ptr %conf228.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %conf228.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %303, ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  %304 = load i32, ptr @dsp_debug, align 4
  %and229.i = and i32 %304, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  br i1 %tobool230.not.i, label %if.end227.i.sw.epilog494.thread743_crit_edge, label %if.then231.i

if.end227.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then231.i:                                     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb233.i:                                       ; preds = %if.end.i704
  %hdlc234.i = getelementptr i8, ptr %ch, i32 564
  %305 = ptrtoint ptr %hdlc234.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %hdlc234.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool235.not.i = icmp eq i32 %306, 0
  br i1 %tobool235.not.i, label %if.end237.i, label %sw.bb233.i.sw.epilog494.thread747_crit_edge

sw.bb233.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb233.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end237.i:                                      ; preds = %sw.bb233.i
  %307 = load i32, ptr @dsp_debug, align 4
  %and238.i = and i32 %307, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238.i)
  %tobool239.not.i = icmp eq i32 %and238.i, 0
  br i1 %tobool239.not.i, label %if.end237.i.if.end246.i_crit_edge, label %do.end243.i

if.end237.i.if.end246.i_crit_edge:                ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end246.i

do.end243.i:                                      ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #11
  %call245.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.69) #12
  br label %if.end246.i

if.end246.i:                                      ; preds = %do.end243.i, %if.end237.i.if.end246.i_crit_edge
  %tx_mix247.i = getelementptr i8, ptr %ch, i32 132
  %308 = ptrtoint ptr %tx_mix247.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 0, ptr %tx_mix247.i, align 4
  %conf248.i = getelementptr i8, ptr %ch, i32 576
  %309 = ptrtoint ptr %conf248.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %conf248.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %310, ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  %311 = load i32, ptr @dsp_debug, align 4
  %and249.i = and i32 %311, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249.i)
  %tobool250.not.i = icmp eq i32 %and249.i, 0
  br i1 %tobool250.not.i, label %if.end246.i.sw.epilog494.thread743_crit_edge, label %if.then251.i

if.end246.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then251.i:                                     ; preds = %if.end246.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb253.i:                                       ; preds = %if.end.i704
  %tx_data.i = getelementptr i8, ptr %ch, i32 66192
  %312 = ptrtoint ptr %tx_data.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 1, ptr %tx_data.i, align 4
  %313 = load i32, ptr @dsp_debug, align 4
  %and254.i = and i32 %313, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254.i)
  %tobool255.not.i = icmp eq i32 %and254.i, 0
  br i1 %tobool255.not.i, label %sw.bb253.i.if.end262.i_crit_edge, label %do.end259.i

sw.bb253.i.if.end262.i_crit_edge:                 ; preds = %sw.bb253.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262.i

do.end259.i:                                      ; preds = %sw.bb253.i
  call void @__sanitizer_cov_trace_pc() #11
  %call261.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.69) #12
  br label %if.end262.i

if.end262.i:                                      ; preds = %do.end259.i, %sw.bb253.i.if.end262.i_crit_edge
  %conf263.i = getelementptr i8, ptr %ch, i32 576
  %314 = ptrtoint ptr %conf263.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %conf263.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %315, ptr noundef %add.ptr) #9
  %316 = load i32, ptr @dsp_options, align 4
  %and.i79.i = and i32 %316, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool.not.i80.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool.not.i80.i, label %if.end.i83.i, label %if.end262.i.dsp_rx_off.exit96.i_crit_edge

if.end262.i.dsp_rx_off.exit96.i_crit_edge:        ; preds = %if.end262.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit96.i

if.end.i83.i:                                     ; preds = %if.end262.i
  %317 = ptrtoint ptr %conf263.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %conf263.i, align 4
  %tobool1.not.i82.i = icmp eq ptr %318, null
  br i1 %tobool1.not.i82.i, label %if.then2.i84.i, label %if.end3.i89.i

if.then2.i84.i:                                   ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit96.i

if.end3.i89.i:                                    ; preds = %if.end.i83.i
  %mlist.i85.i = getelementptr inbounds %struct.dsp_conf, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %mlist.i85.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %member.018.i86.i = load ptr, ptr %mlist.i85.i, align 4
  %cmp.not20.i88.i = icmp eq ptr %member.018.i86.i, %mlist.i85.i
  br i1 %cmp.not20.i88.i, label %if.end3.i89.i.dsp_rx_off.exit96.i_crit_edge, label %if.end3.i89.i.for.body.i95.i_crit_edge

if.end3.i89.i.for.body.i95.i_crit_edge:           ; preds = %if.end3.i89.i
  br label %for.body.i95.i

if.end3.i89.i.dsp_rx_off.exit96.i_crit_edge:      ; preds = %if.end3.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit96.i

for.body.i95.i:                                   ; preds = %for.body.i95.i.for.body.i95.i_crit_edge, %if.end3.i89.i.for.body.i95.i_crit_edge
  %member.021.i90.i = phi ptr [ %member.0.i92.i, %for.body.i95.i.for.body.i95.i_crit_edge ], [ %member.018.i86.i, %if.end3.i89.i.for.body.i95.i_crit_edge ]
  %dsp7.i91.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i90.i, i32 0, i32 1
  %320 = ptrtoint ptr %dsp7.i91.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dsp7.i91.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %321) #9
  %322 = ptrtoint ptr %member.021.i90.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %member.0.i92.i = load ptr, ptr %member.021.i90.i, align 4
  %323 = ptrtoint ptr %conf263.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %conf263.i, align 4
  %mlist6.i93.i = getelementptr inbounds %struct.dsp_conf, ptr %324, i32 0, i32 2
  %cmp.not.i94.i = icmp eq ptr %member.0.i92.i, %mlist6.i93.i
  br i1 %cmp.not.i94.i, label %for.body.i95.i.dsp_rx_off.exit96.i_crit_edge, label %for.body.i95.i.for.body.i95.i_crit_edge

for.body.i95.i.for.body.i95.i_crit_edge:          ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95.i

for.body.i95.i.dsp_rx_off.exit96.i_crit_edge:     ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit96.i

dsp_rx_off.exit96.i:                              ; preds = %for.body.i95.i.dsp_rx_off.exit96.i_crit_edge, %if.end3.i89.i.dsp_rx_off.exit96.i_crit_edge, %if.then2.i84.i, %if.end262.i.dsp_rx_off.exit96.i_crit_edge
  %325 = load i32, ptr @dsp_debug, align 4
  %and264.i = and i32 %325, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264.i)
  %tobool265.not.i = icmp eq i32 %and264.i, 0
  br i1 %tobool265.not.i, label %dsp_rx_off.exit96.i.sw.epilog494.thread743_crit_edge, label %if.then266.i

dsp_rx_off.exit96.i.sw.epilog494.thread743_crit_edge: ; preds = %dsp_rx_off.exit96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then266.i:                                     ; preds = %dsp_rx_off.exit96.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb268.i:                                       ; preds = %if.end.i704
  %tx_data269.i = getelementptr i8, ptr %ch, i32 66192
  %326 = ptrtoint ptr %tx_data269.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 0, ptr %tx_data269.i, align 4
  %327 = load i32, ptr @dsp_debug, align 4
  %and270.i = and i32 %327, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270.i)
  %tobool271.not.i = icmp eq i32 %and270.i, 0
  br i1 %tobool271.not.i, label %sw.bb268.i.if.end278.i_crit_edge, label %do.end275.i

sw.bb268.i.if.end278.i_crit_edge:                 ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end278.i

do.end275.i:                                      ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #11
  %call277.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.69) #12
  br label %if.end278.i

if.end278.i:                                      ; preds = %do.end275.i, %sw.bb268.i.if.end278.i_crit_edge
  %conf279.i = getelementptr i8, ptr %ch, i32 576
  %328 = ptrtoint ptr %conf279.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %conf279.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %329, ptr noundef %add.ptr) #9
  %330 = load i32, ptr @dsp_options, align 4
  %and.i97.i = and i32 %330, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %tobool.not.i98.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool.not.i98.i, label %if.end.i101.i, label %if.end278.i.dsp_rx_off.exit114.i_crit_edge

if.end278.i.dsp_rx_off.exit114.i_crit_edge:       ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit114.i

if.end.i101.i:                                    ; preds = %if.end278.i
  %331 = ptrtoint ptr %conf279.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %conf279.i, align 4
  %tobool1.not.i100.i = icmp eq ptr %332, null
  br i1 %tobool1.not.i100.i, label %if.then2.i102.i, label %if.end3.i107.i

if.then2.i102.i:                                  ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %add.ptr) #9
  br label %dsp_rx_off.exit114.i

if.end3.i107.i:                                   ; preds = %if.end.i101.i
  %mlist.i103.i = getelementptr inbounds %struct.dsp_conf, ptr %332, i32 0, i32 2
  %333 = ptrtoint ptr %mlist.i103.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %member.018.i104.i = load ptr, ptr %mlist.i103.i, align 4
  %cmp.not20.i106.i = icmp eq ptr %member.018.i104.i, %mlist.i103.i
  br i1 %cmp.not20.i106.i, label %if.end3.i107.i.dsp_rx_off.exit114.i_crit_edge, label %if.end3.i107.i.for.body.i113.i_crit_edge

if.end3.i107.i.for.body.i113.i_crit_edge:         ; preds = %if.end3.i107.i
  br label %for.body.i113.i

if.end3.i107.i.dsp_rx_off.exit114.i_crit_edge:    ; preds = %if.end3.i107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit114.i

for.body.i113.i:                                  ; preds = %for.body.i113.i.for.body.i113.i_crit_edge, %if.end3.i107.i.for.body.i113.i_crit_edge
  %member.021.i108.i = phi ptr [ %member.0.i110.i, %for.body.i113.i.for.body.i113.i_crit_edge ], [ %member.018.i104.i, %if.end3.i107.i.for.body.i113.i_crit_edge ]
  %dsp7.i109.i = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021.i108.i, i32 0, i32 1
  %334 = ptrtoint ptr %dsp7.i109.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dsp7.i109.i, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %335) #9
  %336 = ptrtoint ptr %member.021.i108.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %member.0.i110.i = load ptr, ptr %member.021.i108.i, align 4
  %337 = ptrtoint ptr %conf279.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %conf279.i, align 4
  %mlist6.i111.i = getelementptr inbounds %struct.dsp_conf, ptr %338, i32 0, i32 2
  %cmp.not.i112.i = icmp eq ptr %member.0.i110.i, %mlist6.i111.i
  br i1 %cmp.not.i112.i, label %for.body.i113.i.dsp_rx_off.exit114.i_crit_edge, label %for.body.i113.i.for.body.i113.i_crit_edge

for.body.i113.i.for.body.i113.i_crit_edge:        ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i113.i

for.body.i113.i.dsp_rx_off.exit114.i_crit_edge:   ; preds = %for.body.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_rx_off.exit114.i

dsp_rx_off.exit114.i:                             ; preds = %for.body.i113.i.dsp_rx_off.exit114.i_crit_edge, %if.end3.i107.i.dsp_rx_off.exit114.i_crit_edge, %if.then2.i102.i, %if.end278.i.dsp_rx_off.exit114.i_crit_edge
  %339 = load i32, ptr @dsp_debug, align 4
  %and280.i = and i32 %339, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280.i)
  %tobool281.not.i = icmp eq i32 %and280.i, 0
  br i1 %tobool281.not.i, label %dsp_rx_off.exit114.i.sw.epilog494.thread743_crit_edge, label %if.then282.i

dsp_rx_off.exit114.i.sw.epilog494.thread743_crit_edge: ; preds = %dsp_rx_off.exit114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

if.then282.i:                                     ; preds = %dsp_rx_off.exit114.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dsp_cmx_debug(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb284.i:                                       ; preds = %if.end.i704
  %hdlc285.i = getelementptr i8, ptr %ch, i32 564
  %340 = ptrtoint ptr %hdlc285.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %hdlc285.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool286.not.i = icmp ne i32 %341, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp289.i = icmp ult i32 %sub.i, 4
  %or.cond6.i = select i1 %tobool286.not.i, i1 true, i1 %cmp289.i
  br i1 %or.cond6.i, label %sw.bb284.i.sw.epilog494.thread747_crit_edge, label %if.end291.i

sw.bb284.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb284.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end291.i:                                      ; preds = %sw.bb284.i
  %342 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %add.ptr.i, align 4
  %shl.i = shl i32 %343, 3
  %cmx_delay.i = getelementptr i8, ptr %ch, i32 66184
  %344 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 8191) #9
  %345 = ptrtoint ptr %cmx_delay.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %cmx_delay.i, align 4
  %346 = load i32, ptr @dsp_debug, align 4
  %and297.i = and i32 %346, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297.i)
  %tobool298.not.i = icmp eq i32 %and297.i, 0
  br i1 %tobool298.not.i, label %if.end291.i.sw.epilog494.thread743_crit_edge, label %do.end302.i

if.end291.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

do.end302.i:                                      ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #11
  %call305.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.69, i32 noundef %344) #12
  br label %sw.epilog494.thread743

sw.bb307.i:                                       ; preds = %if.end.i704
  %hdlc308.i = getelementptr i8, ptr %ch, i32 564
  %347 = ptrtoint ptr %hdlc308.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %hdlc308.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool309.not.i = icmp eq i32 %348, 0
  br i1 %tobool309.not.i, label %if.end311.i, label %sw.bb307.i.sw.epilog494.thread747_crit_edge

sw.bb307.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb307.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end311.i:                                      ; preds = %sw.bb307.i
  %cmx_delay312.i = getelementptr i8, ptr %ch, i32 66184
  %349 = ptrtoint ptr %cmx_delay312.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 0, ptr %cmx_delay312.i, align 4
  %350 = load i32, ptr @dsp_debug, align 4
  %and313.i = and i32 %350, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313.i)
  %tobool314.not.i = icmp eq i32 %and313.i, 0
  br i1 %tobool314.not.i, label %if.end311.i.sw.epilog494.thread743_crit_edge, label %do.end318.i

if.end311.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

do.end318.i:                                      ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #11
  %call320.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.69) #12
  br label %sw.epilog494.thread743

sw.bb322.i:                                       ; preds = %if.end.i704
  %hdlc323.i = getelementptr i8, ptr %ch, i32 564
  %351 = ptrtoint ptr %hdlc323.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %hdlc323.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool324.not.i = icmp eq i32 %352, 0
  br i1 %tobool324.not.i, label %if.end326.i, label %sw.bb322.i.sw.epilog494.thread747_crit_edge

sw.bb322.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb322.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end326.i:                                      ; preds = %sw.bb322.i
  %tx_dejitter.i = getelementptr i8, ptr %ch, i32 66188
  %353 = ptrtoint ptr %tx_dejitter.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 1, ptr %tx_dejitter.i, align 4
  %354 = load i32, ptr @dsp_debug, align 4
  %and327.i = and i32 %354, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327.i)
  %tobool328.not.i = icmp eq i32 %and327.i, 0
  br i1 %tobool328.not.i, label %if.end326.i.sw.epilog494.thread743_crit_edge, label %do.end332.i

if.end326.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

do.end332.i:                                      ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #11
  %call334.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.69) #12
  br label %sw.epilog494.thread743

sw.bb336.i:                                       ; preds = %if.end.i704
  %hdlc337.i = getelementptr i8, ptr %ch, i32 564
  %355 = ptrtoint ptr %hdlc337.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %hdlc337.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool338.not.i = icmp eq i32 %356, 0
  br i1 %tobool338.not.i, label %if.end340.i, label %sw.bb336.i.sw.epilog494.thread747_crit_edge

sw.bb336.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb336.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end340.i:                                      ; preds = %sw.bb336.i
  %tx_dejitter341.i = getelementptr i8, ptr %ch, i32 66188
  %357 = ptrtoint ptr %tx_dejitter341.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 0, ptr %tx_dejitter341.i, align 4
  %358 = load i32, ptr @dsp_debug, align 4
  %and342.i = and i32 %358, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and342.i)
  %tobool343.not.i = icmp eq i32 %and342.i, 0
  br i1 %tobool343.not.i, label %if.end340.i.sw.epilog494.thread743_crit_edge, label %do.end347.i

if.end340.i.sw.epilog494.thread743_crit_edge:     ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread743

do.end347.i:                                      ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #11
  %call349.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.69) #12
  br label %sw.epilog494.thread743

sw.bb351.i:                                       ; preds = %if.end.i704
  %hdlc352.i = getelementptr i8, ptr %ch, i32 564
  %359 = ptrtoint ptr %hdlc352.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %hdlc352.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool353.not.i = icmp eq i32 %360, 0
  br i1 %tobool353.not.i, label %if.end355.i, label %sw.bb351.i.sw.epilog494.thread747_crit_edge

sw.bb351.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb351.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end355.i:                                      ; preds = %sw.bb351.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp356.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp356.i, label %land.lhs.true.i, label %if.end355.i.if.else.i_crit_edge

if.end355.i.if.else.i_crit_edge:                  ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end355.i
  %sub357.i = add i32 %175, -5
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i, i32 %sub357.i
  %361 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %362)
  %tobool358.not.i = icmp eq i8 %362, 0
  br i1 %tobool358.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %do.end362.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

do.end362.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call364.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.69) #12
  br label %sw.epilog494.thread747

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end355.i.if.else.i_crit_edge
  %spec.select2.i = phi ptr [ %add.ptr.i, %land.lhs.true.i.if.else.i_crit_edge ], [ null, %if.end355.i.if.else.i_crit_edge ]
  %pipeline.i = getelementptr i8, ptr %ch, i32 70500
  %inuse.i = getelementptr i8, ptr %ch, i32 70552
  %363 = ptrtoint ptr %inuse.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 1, ptr %inuse.i, align 4
  %conf365.i = getelementptr i8, ptr %ch, i32 576
  %364 = ptrtoint ptr %conf365.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %conf365.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %365, ptr noundef %add.ptr) #9
  %call369.i = tail call i32 @dsp_pipeline_build(ptr noundef %pipeline.i, ptr noundef %spec.select2.i) #9
  %366 = ptrtoint ptr %conf365.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %conf365.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %367, ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494

sw.bb372.i:                                       ; preds = %if.end.i704
  %hdlc373.i = getelementptr i8, ptr %ch, i32 564
  %368 = ptrtoint ptr %hdlc373.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %hdlc373.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %tobool374.not.i = icmp ne i32 %369, 0
  %370 = add i32 %175, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %370)
  %371 = icmp ult i32 %370, -53
  %or.cond.i = select i1 %tobool374.not.i, i1 true, i1 %371
  br i1 %or.cond.i, label %sw.bb372.i.sw.epilog494.thread747_crit_edge, label %if.end382.i

sw.bb372.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb372.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end382.i:                                      ; preds = %sw.bb372.i
  %372 = load i32, ptr @dsp_debug, align 4
  %and383.i = and i32 %372, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and383.i)
  %tobool384.not.i = icmp eq i32 %and383.i, 0
  br i1 %tobool384.not.i, label %if.end382.i.if.end391.i_crit_edge, label %do.end388.i

if.end382.i.if.end391.i_crit_edge:                ; preds = %if.end382.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end391.i

do.end388.i:                                      ; preds = %if.end382.i
  call void @__sanitizer_cov_trace_pc() #11
  %call390.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.69) #12
  br label %if.end391.i

if.end391.i:                                      ; preds = %do.end388.i, %if.end382.i.if.end391.i_crit_edge
  %call392.i = tail call i32 @dsp_bf_init(ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392.i)
  %tobool393.not.i = icmp eq i32 %call392.i, 0
  %..i = select i1 %tobool393.not.i, i32 9238, i32 9239
  %373 = ptrtoint ptr %cont.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %..i, ptr %cont.i, align 4
  %call397.i = call fastcc ptr @_alloc_mISDN_skb(ptr noundef nonnull %cont.i) #9
  %tobool398.not.i = icmp eq ptr %call397.i, null
  br i1 %tobool398.not.i, label %if.end391.i.if.end410.i_crit_edge, label %if.then399.i

if.end391.i.if.end410.i_crit_edge:                ; preds = %if.end391.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410.i

if.then399.i:                                     ; preds = %if.end391.i
  %up.i = getelementptr i8, ptr %ch, i32 44
  %374 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %up.i, align 4
  %tobool400.not.i = icmp eq ptr %375, null
  br i1 %tobool400.not.i, label %if.then399.i.if.end410.sink.split.i_crit_edge, label %if.then401.i

if.then399.i.if.end410.sink.split.i_crit_edge:    ; preds = %if.then399.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410.sink.split.i

if.then401.i:                                     ; preds = %if.then399.i
  %send.i = getelementptr inbounds %struct.mISDNchannel, ptr %375, i32 0, i32 7
  %376 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %send.i, align 4
  %call404.i = tail call i32 %377(ptr noundef nonnull %375, ptr noundef nonnull %call397.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404.i)
  %tobool405.not.i = icmp eq i32 %call404.i, 0
  br i1 %tobool405.not.i, label %if.then401.i.if.end410.i_crit_edge, label %if.then401.i.if.end410.sink.split.i_crit_edge

if.then401.i.if.end410.sink.split.i_crit_edge:    ; preds = %if.then401.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410.sink.split.i

if.then401.i.if.end410.i_crit_edge:               ; preds = %if.then401.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410.i

if.end410.sink.split.i:                           ; preds = %if.then401.i.if.end410.sink.split.i_crit_edge, %if.then399.i.if.end410.sink.split.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call397.i) #9
  br label %if.end410.i

if.end410.i:                                      ; preds = %if.end410.sink.split.i, %if.then401.i.if.end410.i_crit_edge, %if.end391.i.if.end410.i_crit_edge
  br i1 %tobool393.not.i, label %if.then412.i, label %if.end410.i.sw.epilog494.thread747_crit_edge

if.end410.i.sw.epilog494.thread747_crit_edge:     ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.then412.i:                                     ; preds = %if.end410.i
  call void @__sanitizer_cov_trace_pc() #11
  %conf413.i = getelementptr i8, ptr %ch, i32 576
  %378 = ptrtoint ptr %conf413.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %conf413.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %379, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.bb415.i:                                       ; preds = %if.end.i704
  %hdlc416.i = getelementptr i8, ptr %ch, i32 564
  %380 = ptrtoint ptr %hdlc416.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %hdlc416.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool417.not.i = icmp eq i32 %381, 0
  br i1 %tobool417.not.i, label %if.end419.i, label %sw.bb415.i.sw.epilog494.thread747_crit_edge

sw.bb415.i.sw.epilog494.thread747_crit_edge:      ; preds = %sw.bb415.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

if.end419.i:                                      ; preds = %sw.bb415.i
  %382 = load i32, ptr @dsp_debug, align 4
  %and420.i = and i32 %382, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420.i)
  %tobool421.not.i = icmp eq i32 %and420.i, 0
  br i1 %tobool421.not.i, label %if.end419.i.if.end428.i_crit_edge, label %do.end425.i

if.end419.i.if.end428.i_crit_edge:                ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end428.i

do.end425.i:                                      ; preds = %if.end419.i
  call void @__sanitizer_cov_trace_pc() #11
  %call427.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.69) #12
  br label %if.end428.i

if.end428.i:                                      ; preds = %do.end425.i, %if.end419.i.if.end428.i_crit_edge
  tail call void @dsp_bf_cleanup(ptr noundef %add.ptr) #9
  %conf429.i = getelementptr i8, ptr %ch, i32 576
  %383 = ptrtoint ptr %conf429.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %conf429.i, align 4
  tail call void @dsp_cmx_hardware(ptr noundef %384, ptr noundef %add.ptr) #9
  tail call void @dsp_dtmf_hardware(ptr noundef %add.ptr) #9
  tail call fastcc void @dsp_rx_off(ptr noundef %add.ptr) #9
  br label %sw.epilog494.thread743

sw.default.i:                                     ; preds = %if.end.i704
  %385 = load i32, ptr @dsp_debug, align 4
  %and430.i = and i32 %385, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and430.i)
  %tobool431.not.i = icmp eq i32 %and430.i, 0
  br i1 %tobool431.not.i, label %sw.default.i.sw.epilog494.thread747_crit_edge, label %do.end435.i

sw.default.i.sw.epilog494.thread747_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog494.thread747

do.end435.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %call437.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.69, i32 noundef %179) #12
  br label %sw.epilog494.thread747

sw.bb399:                                         ; preds = %entry.sw.bb399_crit_edge, %entry.sw.bb399_crit_edge763
  %386 = load i32, ptr @dsp_debug, align 4
  %and400 = and i32 %386, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and400)
  %tobool401.not = icmp eq i32 %and400, 0
  br i1 %tobool401.not, label %sw.bb399.if.end410_crit_edge, label %do.end405

sw.bb399.if.end410_crit_edge:                     ; preds = %sw.bb399
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end410

do.end405:                                        ; preds = %sw.bb399
  call void @__sanitizer_cov_trace_pc() #11
  %name407 = getelementptr i8, ptr %ch, i32 48
  %call409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.24, ptr noundef %name407) #12
  br label %if.end410

if.end410:                                        ; preds = %do.end405, %sw.bb399.if.end410_crit_edge
  %hardware412 = getelementptr i8, ptr %ch, i32 220
  %387 = ptrtoint ptr %hardware412 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %hardware412, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool413.not = icmp eq i32 %388, 0
  br i1 %tobool413.not, label %lor.lhs.false, label %if.end410.if.then417_crit_edge

if.end410.if.then417_crit_edge:                   ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then417

lor.lhs.false:                                    ; preds = %if.end410
  %software415 = getelementptr i8, ptr %ch, i32 216
  %389 = ptrtoint ptr %software415 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %software415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %tobool416.not = icmp eq i32 %390, 0
  br i1 %tobool416.not, label %lor.lhs.false.if.end418_crit_edge, label %lor.lhs.false.if.then417_crit_edge

lor.lhs.false.if.then417_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then417

lor.lhs.false.if.end418_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end418

if.then417:                                       ; preds = %lor.lhs.false.if.then417_crit_edge, %if.end410.if.then417_crit_edge
  tail call void @dsp_dtmf_goertzel_init(ptr noundef %add.ptr) #9
  br label %if.end418

if.end418:                                        ; preds = %if.then417, %lor.lhs.false.if.end418_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i) #9
  %391 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i, i32 0, i32 2
  %peer.i = getelementptr %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %392 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %peer.i, align 4
  %tobool.not.i709 = icmp eq ptr %393, null
  br i1 %tobool.not.i709, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %if.end418
  %394 = load i32, ptr @dsp_debug, align 4
  %and.i710 = and i32 %394, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i710)
  %tobool1.not.i711 = icmp eq i32 %and.i710, 0
  br i1 %tobool1.not.i711, label %if.then.i.get_features.exit_crit_edge, label %do.end.i713

if.then.i.get_features.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_features.exit

do.end.i713:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i712 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #12
  br label %get_features.exit

if.end4.i:                                        ; preds = %if.end418
  %ctrl.i = getelementptr inbounds %struct.mISDNchannel, ptr %393, i32 0, i32 9
  %395 = call ptr @memset(ptr %cq.i, i32 0, i32 16)
  %396 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ctrl.i, align 4
  %call7.i = call i32 %397(ptr noundef nonnull %393, i32 noundef 768, ptr noundef nonnull %cq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i714 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i714, label %do.end11.i716, label %if.end14.i717

do.end11.i716:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i715 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.146) #12
  br label %get_features.exit

if.end14.i717:                                    ; preds = %if.end4.i
  %398 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %cq.i, align 4
  %and16.i = and i32 %399, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i717.if.end19.i_crit_edge, label %if.then18.i

if.end14.i717.if.end19.i_crit_edge:               ; preds = %if.end14.i717
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end14.i717
  call void @__sanitizer_cov_trace_pc() #11
  %features_rx_off.i = getelementptr i8, ptr %ch, i32 66236
  %400 = ptrtoint ptr %features_rx_off.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 1, ptr %features_rx_off.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end14.i717.if.end19.i_crit_edge
  %and21.i = and i32 %399, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end24.i_crit_edge, label %if.then23.i

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %features_fill_empty.i = getelementptr i8, ptr %ch, i32 66240
  %401 = ptrtoint ptr %features_fill_empty.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 1, ptr %features_fill_empty.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end24.i_crit_edge
  %402 = load i32, ptr @dsp_options, align 4
  %and25.i = and i32 %402, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.get_features.exit_crit_edge

if.end24.i.get_features.exit_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_features.exit

if.end28.i:                                       ; preds = %if.end24.i
  %and30.i = and i32 %399, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else.i718, label %if.then32.i

if.then32.i:                                      ; preds = %if.end28.i
  %403 = ptrtoint ptr %cq.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 8193, ptr %cq.i, align 4
  %features.i = getelementptr i8, ptr %ch, i32 66196
  %404 = ptrtoint ptr %features.i to i32
  %405 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %391, align 4
  %406 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %peer.i, align 4
  %ctrl35.i = getelementptr inbounds %struct.mISDNchannel, ptr %407, i32 0, i32 9
  %408 = ptrtoint ptr %ctrl35.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %ctrl35.i, align 4
  %call37.i = call i32 %409(ptr noundef %407, i32 noundef 768, ptr noundef nonnull %cq.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then32.i.get_features.exit_crit_edge, label %do.end42.i

if.then32.i.get_features.exit_crit_edge:          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_features.exit

do.end42.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.146) #12
  br label %get_features.exit

if.else.i718:                                     ; preds = %if.end28.i
  %410 = load i32, ptr @dsp_debug, align 4
  %and46.i = and i32 %410, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.else.i718.get_features.exit_crit_edge, label %do.end51.i

if.else.i718.get_features.exit_crit_edge:         ; preds = %if.else.i718
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_features.exit

do.end51.i:                                       ; preds = %if.else.i718
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr i8, ptr %ch, i32 48
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.146, ptr noundef %name.i) #12
  br label %get_features.exit

get_features.exit:                                ; preds = %do.end51.i, %if.else.i718.get_features.exit_crit_edge, %do.end42.i, %if.then32.i.get_features.exit_crit_edge, %if.end24.i.get_features.exit_crit_edge, %do.end11.i716, %do.end.i713, %if.then.i.get_features.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i) #9
  %features_fill_empty = getelementptr i8, ptr %ch, i32 66240
  %411 = ptrtoint ptr %features_fill_empty to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %features_fill_empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool419.not = icmp eq i32 %412, 0
  br i1 %tobool419.not, label %get_features.exit.if.end421_crit_edge, label %if.then420

get_features.exit.if.end421_crit_edge:            ; preds = %get_features.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end421

if.then420:                                       ; preds = %get_features.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i719) #9
  %413 = getelementptr inbounds i8, ptr %cq.i719, i32 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 0, ptr %413, align 4
  %415 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %peer.i, align 4
  %tobool.not.i721 = icmp eq ptr %416, null
  br i1 %tobool.not.i721, label %if.then.i724, label %if.end3.i728

if.then.i724:                                     ; preds = %if.then420
  %417 = load i32, ptr @dsp_debug, align 4
  %and.i722 = and i32 %417, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i722)
  %tobool1.not.i723 = icmp eq i32 %and.i722, 0
  br i1 %tobool1.not.i723, label %if.then.i724.dsp_fill_empty.exit_crit_edge, label %do.end.i726

if.then.i724.dsp_fill_empty.exit_crit_edge:       ; preds = %if.then.i724
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_fill_empty.exit

do.end.i726:                                      ; preds = %if.then.i724
  call void @__sanitizer_cov_trace_pc() #11
  %call.i725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156) #12
  br label %dsp_fill_empty.exit

if.end3.i728:                                     ; preds = %if.then420
  %418 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i719, i32 0, i32 3
  %419 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i719, i32 0, i32 2
  %420 = ptrtoint ptr %cq.i719 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 512, ptr %cq.i719, align 4
  %421 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 1, ptr %419, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %422 = load i8, ptr @dsp_silence, align 1
  %conv.i = zext i8 %422 to i32
  %423 = ptrtoint ptr %418 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %conv.i, ptr %418, align 4
  %ctrl.i727 = getelementptr inbounds %struct.mISDNchannel, ptr %416, i32 0, i32 9
  %424 = ptrtoint ptr %ctrl.i727 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ctrl.i727, align 4
  %call8.i = call i32 %425(ptr noundef nonnull %416, i32 noundef 768, ptr noundef nonnull %cq.i719) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end16.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end3.i728
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.156) #12
  br label %dsp_fill_empty.exit

if.end16.i:                                       ; preds = %if.end3.i728
  %426 = load i32, ptr @dsp_debug, align 4
  %and17.i729 = and i32 %426, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i729)
  %tobool18.not.i730 = icmp eq i32 %and17.i729, 0
  br i1 %tobool18.not.i730, label %if.end16.i.dsp_fill_empty.exit_crit_edge, label %do.end22.i733

if.end16.i.dsp_fill_empty.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dsp_fill_empty.exit

do.end22.i733:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i731 = getelementptr i8, ptr %ch, i32 48
  %call24.i732 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.156, ptr noundef %name.i731) #12
  br label %dsp_fill_empty.exit

dsp_fill_empty.exit:                              ; preds = %do.end22.i733, %if.end16.i.dsp_fill_empty.exit_crit_edge, %do.end13.i, %do.end.i726, %if.then.i724.dsp_fill_empty.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i719) #9
  br label %if.end421

if.end421:                                        ; preds = %dsp_fill_empty.exit, %get_features.exit.if.end421_crit_edge
  %427 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %427, i32 4)
  store i32 257, ptr %cb, align 1
  %428 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %peer.i, align 4
  %tobool423.not = icmp eq ptr %429, null
  br i1 %tobool423.not, label %if.end421.if.then496_crit_edge, label %if.then424

if.end421.if.then496_crit_edge:                   ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then424:                                       ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #11
  %recv = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %430 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %recv, align 4
  %call426 = call i32 %431(ptr noundef nonnull %429, ptr noundef %skb) #9
  br label %cleanup

sw.bb428:                                         ; preds = %entry.sw.bb428_crit_edge, %entry.sw.bb428_crit_edge764
  %432 = load i32, ptr @dsp_debug, align 4
  %and429 = and i32 %432, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and429)
  %tobool430.not = icmp eq i32 %and429, 0
  br i1 %tobool430.not, label %sw.bb428.do.body441_crit_edge, label %do.end434

sw.bb428.do.body441_crit_edge:                    ; preds = %sw.bb428
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body441

do.end434:                                        ; preds = %sw.bb428
  call void @__sanitizer_cov_trace_pc() #11
  %name436 = getelementptr i8, ptr %ch, i32 48
  %call438 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.24, ptr noundef %name436) #12
  br label %do.body441

do.body441:                                       ; preds = %do.end434, %sw.bb428.do.body441_crit_edge
  %call448 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %tone453 = getelementptr i8, ptr %ch, i32 136
  %tone454 = getelementptr i8, ptr %ch, i32 144
  %433 = ptrtoint ptr %tone454 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 0, ptr %tone454, align 4
  %hardware456 = getelementptr i8, ptr %ch, i32 140
  %434 = ptrtoint ptr %hardware456 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 0, ptr %hardware456, align 4
  %435 = ptrtoint ptr %tone453 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 0, ptr %tone453, align 4
  %pprev.i.i = getelementptr i8, ptr %ch, i32 164
  %436 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i734.not = icmp eq ptr %437, null
  br i1 %tobool.not.i.i734.not, label %do.body441.if.end466_crit_edge, label %if.then462

do.body441.if.end466_crit_edge:                   ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end466

if.then462:                                       ; preds = %do.body441
  call void @__sanitizer_cov_trace_pc() #11
  %tl = getelementptr i8, ptr %ch, i32 160
  %call465 = tail call i32 @del_timer(ptr noundef %tl) #9
  br label %if.end466

if.end466:                                        ; preds = %if.then462, %do.body441.if.end466_crit_edge
  %conf467 = getelementptr i8, ptr %ch, i32 576
  %438 = ptrtoint ptr %conf467 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %conf467, align 4
  %tobool468.not = icmp eq ptr %439, null
  br i1 %tobool468.not, label %if.end466.if.end471_crit_edge, label %if.then469

if.end466.if.end471_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end471

if.then469:                                       ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #11
  %call470 = tail call i32 @dsp_cmx_conf(ptr noundef %add.ptr, i32 noundef 0) #9
  br label %if.end471

if.end471:                                        ; preds = %if.then469, %if.end466.if.end471_crit_edge
  %sendq472 = getelementptr i8, ptr %ch, i32 508
  tail call void @skb_queue_purge(ptr noundef %sendq472) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call448) #9
  %440 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %440, i32 4)
  store i32 513, ptr %cb, align 1
  %peer474 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %441 = ptrtoint ptr %peer474 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %peer474, align 4
  %tobool475.not = icmp eq ptr %442, null
  br i1 %tobool475.not, label %if.end471.if.then496_crit_edge, label %if.then476

if.end471.if.then496_crit_edge:                   ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then476:                                       ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #11
  %recv477 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %443 = ptrtoint ptr %recv477 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %recv477, align 4
  %call479 = tail call i32 %444(ptr noundef nonnull %442, ptr noundef %skb) #9
  br label %cleanup

sw.default481:                                    ; preds = %entry
  %445 = load i32, ptr @dsp_debug, align 4
  %and482 = and i32 %445, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and482)
  %tobool483.not = icmp eq i32 %and482, 0
  br i1 %tobool483.not, label %sw.default481.cleanup_crit_edge, label %do.end487

sw.default481.cleanup_crit_edge:                  ; preds = %sw.default481
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end487:                                        ; preds = %sw.default481
  call void @__sanitizer_cov_trace_pc() #11
  %name490 = getelementptr i8, ptr %ch, i32 48
  %call492 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.24, i32 noundef %1, ptr noundef %name490) #12
  br label %cleanup

sw.epilog494.thread743:                           ; preds = %if.end428.i, %if.then412.i, %do.end347.i, %if.end340.i.sw.epilog494.thread743_crit_edge, %do.end332.i, %if.end326.i.sw.epilog494.thread743_crit_edge, %do.end318.i, %if.end311.i.sw.epilog494.thread743_crit_edge, %do.end302.i, %if.end291.i.sw.epilog494.thread743_crit_edge, %if.then282.i, %dsp_rx_off.exit114.i.sw.epilog494.thread743_crit_edge, %if.then266.i, %dsp_rx_off.exit96.i.sw.epilog494.thread743_crit_edge, %if.then251.i, %if.end246.i.sw.epilog494.thread743_crit_edge, %if.then231.i, %if.end227.i.sw.epilog494.thread743_crit_edge, %for.body.i77.i.sw.epilog494.thread743_crit_edge, %if.end3.i71.i.sw.epilog494.thread743_crit_edge, %if.then2.i66.i, %if.end212.i.sw.epilog494.thread743_crit_edge, %for.body.i59.i.sw.epilog494.thread743_crit_edge, %if.end3.i53.i.sw.epilog494.thread743_crit_edge, %if.then2.i48.i, %if.end202.i.sw.epilog494.thread743_crit_edge, %if.then191.i, %dsp_rx_off.exit42.i.sw.epilog494.thread743_crit_edge, %if.then172.i, %dsp_rx_off.exit24.i.sw.epilog494.thread743_crit_edge, %if.end156.i, %if.end137.i, %if.end37.i, %if.end26.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cont.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call393) #9
  br label %if.then496

sw.epilog494.thread747:                           ; preds = %do.end435.i, %sw.default.i.sw.epilog494.thread747_crit_edge, %sw.bb415.i.sw.epilog494.thread747_crit_edge, %if.end410.i.sw.epilog494.thread747_crit_edge, %sw.bb372.i.sw.epilog494.thread747_crit_edge, %do.end362.i, %sw.bb351.i.sw.epilog494.thread747_crit_edge, %sw.bb336.i.sw.epilog494.thread747_crit_edge, %sw.bb322.i.sw.epilog494.thread747_crit_edge, %sw.bb307.i.sw.epilog494.thread747_crit_edge, %sw.bb284.i.sw.epilog494.thread747_crit_edge, %sw.bb233.i.sw.epilog494.thread747_crit_edge, %sw.bb214.i.sw.epilog494.thread747_crit_edge, %sw.bb139.i.sw.epilog494.thread747_crit_edge, %sw.bb120.i.sw.epilog494.thread747_crit_edge, %sw.bb104.i.sw.epilog494.thread747_crit_edge, %sw.bb78.i.sw.epilog494.thread747_crit_edge, %sw.bb42.i.sw.epilog494.thread747_crit_edge, %sw.bb.i.sw.epilog494.thread747_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %sw.default.i.sw.epilog494.thread747_crit_edge ], [ -22, %do.end435.i ], [ -22, %sw.bb415.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb372.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb351.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb336.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb322.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb307.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb284.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb233.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb214.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb139.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb120.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb104.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb78.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb42.i.sw.epilog494.thread747_crit_edge ], [ -22, %sw.bb.i.sw.epilog494.thread747_crit_edge ], [ -22, %do.end362.i ], [ %call392.i, %if.end410.i.sw.epilog494.thread747_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cont.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call393) #9
  br label %cleanup

sw.epilog494:                                     ; preds = %if.else.i, %tone_off.i, %if.end99.i.sw.epilog494_crit_edge, %for.body.i.i.sw.epilog494_crit_edge, %if.end3.i.i.sw.epilog494_crit_edge, %if.then2.i.i, %if.end77.i.sw.epilog494_crit_edge, %if.then61.i, %if.end57.i.sw.epilog494_crit_edge
  %retval.0.i = phi i32 [ %call369.i, %if.else.i ], [ %ret.0.i, %tone_off.i ], [ %call96.i, %if.end99.i.sw.epilog494_crit_edge ], [ %call58.i, %if.then61.i ], [ %call58.i, %if.end57.i.sw.epilog494_crit_edge ], [ %call73.i, %if.end77.i.sw.epilog494_crit_edge ], [ %call73.i, %if.then2.i.i ], [ %call73.i, %if.end3.i.i.sw.epilog494_crit_edge ], [ %call73.i, %for.body.i.i.sw.epilog494_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cont.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call393) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool495.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool495.not, label %sw.epilog494.if.then496_crit_edge, label %sw.epilog494.cleanup_crit_edge

sw.epilog494.cleanup_crit_edge:                   ; preds = %sw.epilog494
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog494.if.then496_crit_edge:                ; preds = %sw.epilog494
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then496

if.then496:                                       ; preds = %sw.epilog494.if.then496_crit_edge, %sw.epilog494.thread743, %if.end471.if.then496_crit_edge, %if.end421.if.then496_crit_edge, %do.body371, %if.end366.if.then496_crit_edge, %dsp_rx_off.exit702.if.then496_crit_edge, %if.end290.if.then496_crit_edge, %if.end237, %if.end205.if.then496_crit_edge, %if.end167.if.then496_crit_edge, %do.end163, %if.then157.if.then496_crit_edge, %if.end129.if.then496_crit_edge, %if.end125.if.then496_crit_edge, %if.end44.if.then496_crit_edge, %do.body30.if.then496_crit_edge, %if.end, %sw.bb.if.then496_crit_edge
  call void @consume_skb(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then496, %sw.epilog494.cleanup_crit_edge, %sw.epilog494.thread747, %do.end487, %sw.default481.cleanup_crit_edge, %if.then476, %if.then424, %if.end349, %if.then345.cleanup_crit_edge, %sw.bb337.cleanup_crit_edge, %if.then331, %if.then294, %do.end244, %sw.default.cleanup_crit_edge, %sw.bb208.cleanup_crit_edge, %if.then133, %if.then47, %sw.bb10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call479, %if.then476 ], [ %call426, %if.then424 ], [ 0, %if.end349 ], [ %call335, %if.then331 ], [ %call298, %if.then294 ], [ %call50, %if.then47 ], [ %call137, %if.then133 ], [ 0, %if.then496 ], [ %retval.0.i, %sw.epilog494.cleanup_crit_edge ], [ %retval.0.i.ph, %sw.epilog494.thread747 ], [ -22, %sw.default481.cleanup_crit_edge ], [ -22, %do.end487 ], [ -5, %if.then345.cleanup_crit_edge ], [ -22, %sw.bb337.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %do.end244 ], [ -22, %sw.bb208.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsp_ctrl(ptr noundef %ch, i32 noundef %cmd, ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ch, i32 -8
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef %cmd) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cmd)
  %cond = icmp eq i32 %cmd, 512
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %1 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peer, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %sw.bb.do.body12_crit_edge, label %if.then4

sw.bb.do.body12_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl, align 4
  %call9 = tail call i32 %4(ptr noundef nonnull %2, i32 noundef 512, ptr noundef null) #9
  br label %do.body12

do.body12:                                        ; preds = %if.then4, %sw.bb.do.body12_crit_edge
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %b_active = getelementptr i8, ptr %ch, i32 112
  %5 = ptrtoint ptr %b_active to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b_active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call15) #9
  %workq = getelementptr i8, ptr %ch, i32 464
  %call20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %workq) #9
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #9
  %pprev.i.i = getelementptr i8, ptr %ch, i32 164
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.not, label %do.body12.if.end40_crit_edge, label %if.then36

do.body12.if.end40_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %tl = getelementptr i8, ptr %ch, i32 160
  %call39 = tail call i32 @del_timer(ptr noundef %tl) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %do.body12.if.end40_crit_edge
  %sendq = getelementptr i8, ptr %ch, i32 508
  tail call void @skb_queue_purge(ptr noundef %sendq) #9
  %8 = load i32, ptr @dsp_debug, align 4
  %and41 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %do.end46

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %ch, i32 48
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163, ptr noundef %name) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end40.if.end49_crit_edge
  %9 = ptrtoint ptr %b_active to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %b_active, align 4
  %call51 = tail call i32 @dsp_cmx_conf(ptr noundef %add.ptr, i32 noundef 0) #9
  %pipeline = getelementptr i8, ptr %ch, i32 70500
  tail call void @dsp_pipeline_destroy(ptr noundef %pipeline) #9
  %10 = load i32, ptr @dsp_debug, align 4
  %and52 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end49.if.end62_crit_edge, label %do.end57

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %name59 = getelementptr i8, ptr %ch, i32 48
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.163, ptr noundef %name59) #12
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %if.end49.if.end62_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end62.list_del.exit_crit_edge

if.end62.list_del.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %ch, i32 -4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end62.list_del.exit_crit_edge
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %ch, i32 -4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call29) #9
  %19 = load i32, ptr @dsp_debug, align 4
  %and63 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %list_del.exit.if.end71_crit_edge, label %do.end68

list_del.exit.if.end71_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end68:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.163) #12
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %list_del.exit.if.end71_crit_edge
  tail call void @vfree(ptr noundef %add.ptr) #9
  tail call void @module_put(ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end71, %if.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_tone_timeout(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_pipeline_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_hdlc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_bf_decrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_pipeline_process_rx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_change_volume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsp_dtmf_goertzel_decode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_alloc_mISDN_skb(ptr nocapture noundef readonly %dp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then2, !prof !355

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %dp, align 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %call.i, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 2050, ptr %cb, align 1
  %id6 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %id6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 65535, ptr %id6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_hardware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_dtmf_hardware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_rx_off(ptr noundef %dsp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dsp_options, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %1 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conf, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_rx_off_member(ptr noundef %dsp)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %3)
  %member.018 = load ptr, ptr %mlist, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %mlist619 = getelementptr inbounds %struct.dsp_conf, ptr %5, i32 0, i32 2
  %cmp.not20 = icmp eq ptr %member.018, %mlist619
  br i1 %cmp.not20, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %member.021 = phi ptr [ %member.0, %for.body.for.body_crit_edge ], [ %member.018, %if.end3.for.body_crit_edge ]
  %dsp7 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.021, i32 0, i32 1
  %6 = ptrtoint ptr %dsp7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsp7, align 4
  tail call fastcc void @dsp_rx_off_member(ptr noundef %7)
  %8 = ptrtoint ptr %member.021 to i32
  call void @__asan_load4_noabort(i32 %8)
  %member.0 = load ptr, ptr %member.021, align 4
  %9 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conf, align 4
  %mlist6 = getelementptr inbounds %struct.dsp_conf, ptr %10, i32 0, i32 2
  %cmp.not = icmp eq ptr %member.0, %mlist6
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_transmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_dtmf_goertzel_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_cmx_conf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_rx_off_member(ptr noundef %dsp) unnamed_addr #3 align 64 {
entry:
  %cq = alloca %struct.mISDN_ctrl_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq) #9
  %0 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %cq, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %features_rx_off = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 34
  %3 = ptrtoint ptr %features_rx_off to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %features_rx_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_disabled = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 6
  %5 = ptrtoint ptr %rx_disabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %if.end
  %software = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %software to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %software, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else5:                                         ; preds = %if.else
  %echo = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %9 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.else9, label %if.else5.if.end18_crit_edge

if.else5.if.end18_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else9:                                         ; preds = %if.else5
  %conf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.else9.if.end18_crit_edge, label %land.lhs.true

if.else9.if.end18_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %software12 = getelementptr inbounds %struct.dsp_conf, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %software12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %software12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.else9.if.end18_crit_edge, %if.else5.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %rx_off.0 = phi i32 [ 1, %if.else9.if.end18_crit_edge ], [ 0, %if.end.if.end18_crit_edge ], [ 0, %if.else.if.end18_crit_edge ], [ 0, %if.else5.if.end18_crit_edge ], [ %spec.select, %land.lhs.true ]
  %rx_is_off = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 7
  %15 = ptrtoint ptr %rx_is_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_is_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_off.0, i32 %16)
  %cmp = icmp eq i32 %rx_off.0, %16
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end18
  %peer = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.end20
  %19 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %cq, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rx_off.0, ptr %0, align 4
  %ctrl = getelementptr inbounds %struct.mISDNchannel, ptr %18, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl, align 4
  %call31 = call i32 %23(ptr noundef nonnull %18, i32 noundef 768, ptr noundef nonnull %cq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end39:                                         ; preds = %if.end26
  %24 = ptrtoint ptr %rx_is_off to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rx_off.0, ptr %rx_is_off, align 4
  %25 = load i32, ptr @dsp_debug, align 4
  %and41 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %do.end46

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %rx_off.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end39.cleanup_crit_edge, %do.end36, %do.end, %if.then22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_debug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_tone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_pipeline_build(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_bf_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_bf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_pipeline_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_law_tables() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_s2law_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_seven() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_mix_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_ulaw_samples() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_audio_generate_volume_changes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsp_pipeline_module_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_Bprotocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_cmx_send(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !344}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @__UNIQUE_ID_author457, !1, !"__UNIQUE_ID_author457", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 170, i32 1}
!2 = !{ptr @__param_debug, !3, !"__param_debug", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 171, i32 1}
!4 = !{ptr @__UNIQUE_ID_debugtype458, !3, !"__UNIQUE_ID_debugtype458", i1 false, i1 false}
!5 = !{ptr @__param_options, !6, !"__param_options", i1 false, i1 false}
!6 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 172, i32 1}
!7 = !{ptr @__UNIQUE_ID_optionstype459, !6, !"__UNIQUE_ID_optionstype459", i1 false, i1 false}
!8 = !{ptr @__param_poll, !9, !"__param_poll", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 173, i32 1}
!10 = !{ptr @__UNIQUE_ID_polltype460, !9, !"__UNIQUE_ID_polltype460", i1 false, i1 false}
!11 = !{ptr @__param_dtmfthreshold, !12, !"__param_dtmfthreshold", i1 false, i1 false}
!12 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 174, i32 1}
!13 = !{ptr @__UNIQUE_ID_dtmfthresholdtype461, !12, !"__UNIQUE_ID_dtmfthresholdtype461", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file462, !15, !"__UNIQUE_ID_file462", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 175, i32 1}
!16 = !{ptr @__UNIQUE_ID_license463, !15, !"__UNIQUE_ID_license463", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 179, i32 1}
!19 = !{ptr @dsp_lock, !18, !"dsp_lock", i1 false, i1 false}
!20 = !{ptr @dsp_ilist, !21, !"dsp_ilist", i1 false, i1 false}
!21 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 180, i32 1}
!22 = !{ptr @conf_ilist, !23, !"conf_ilist", i1 false, i1 false}
!23 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 181, i32 1}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1214, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dsp_cleanup._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @dsp_cleanup._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1218, i32 3}
!32 = !{ptr @dsp_cleanup._entry.4, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dsp_cleanup._entry_ptr.6, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_mISDN_dsp__464_1225_dsp_init6, !35, !"__initcall__kmod_mISDN_dsp__464_1225_dsp_init6", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1225, i32 1}
!36 = !{ptr @__exitcall_dsp_cleanup, !37, !"__exitcall_dsp_cleanup", i1 false, i1 false}
!37 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1226, i32 1}
!38 = !{ptr @debug, !39, !"debug", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 165, i32 12}
!40 = !{ptr @options, !41, !"options", i1 false, i1 false}
!41 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 166, i32 12}
!42 = !{ptr @poll, !43, !"poll", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 167, i32 12}
!44 = !{ptr @dsp_debug, !45, !"dsp_debug", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 182, i32 5}
!46 = !{ptr @dsp_options, !47, !"dsp_options", i1 false, i1 false}
!47 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 183, i32 5}
!48 = !{ptr @dsp_poll, !49, !"dsp_poll", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 184, i32 5}
!50 = !{ptr @dsp_tics, !51, !"dsp_tics", i1 false, i1 false}
!51 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 184, i32 15}
!52 = !{ptr @__param_str_debug, !3, !"__param_str_debug", i1 false, i1 false}
!53 = !{ptr @__param_str_options, !6, !"__param_str_options", i1 false, i1 false}
!54 = !{ptr @__param_str_poll, !9, !"__param_str_poll", i1 false, i1 false}
!55 = !{ptr @__param_str_dtmfthreshold, !12, !"__param_str_dtmfthreshold", i1 false, i1 false}
!56 = !{ptr @dtmfthreshold, !57, !"dtmfthreshold", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 168, i32 12}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1111, i32 10}
!60 = !{ptr @DSP, !61, !"DSP", i1 false, i1 false}
!61 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1108, i32 25}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1057, i32 3}
!64 = !{ptr @.str.9, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dspcreate._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dspcreate._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1061, i32 3}
!69 = !{ptr @dspcreate._entry.10, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dspcreate._entry_ptr.12, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @dspcreate.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1064, i32 2}
!73 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1078, i32 3}
!76 = !{ptr @dspcreate._entry.14, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dspcreate._entry_ptr.16, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.17, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1081, i32 22}
!80 = !{ptr @dspcreate.__key.18, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1092, i32 2}
!82 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1018, i32 5}
!85 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dsp_send_bh._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @dsp_send_bh._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @skb_queue_head_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!90 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 693, i32 5}
!93 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dsp_function._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @dsp_function._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 743, i32 6}
!98 = !{ptr @dsp_function._entry.25, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @dsp_function._entry_ptr.27, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 771, i32 4}
!102 = !{ptr @dsp_function._entry.28, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @dsp_function._entry_ptr.30, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 778, i32 6}
!106 = !{ptr @dsp_function._entry.31, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dsp_function._entry_ptr.33, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @dsp_function._entry.34, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 789, i32 6}
!110 = !{ptr @dsp_function._entry_ptr.35, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 815, i32 5}
!113 = !{ptr @dsp_function._entry.36, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @dsp_function._entry_ptr.38, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 824, i32 5}
!117 = !{ptr @dsp_function._entry.39, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dsp_function._entry_ptr.41, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 832, i32 4}
!121 = !{ptr @dsp_function._entry.42, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dsp_function._entry_ptr.44, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 848, i32 4}
!125 = !{ptr @dsp_function._entry.45, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @dsp_function._entry_ptr.47, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 859, i32 4}
!129 = !{ptr @dsp_function._entry.48, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @dsp_function._entry_ptr.50, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 907, i32 4}
!133 = !{ptr @dsp_function._entry.51, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @dsp_function._entry_ptr.53, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 923, i32 4}
!137 = !{ptr @dsp_function._entry.54, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @dsp_function._entry_ptr.56, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 942, i32 4}
!141 = !{ptr @dsp_function._entry.57, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @dsp_function._entry_ptr.59, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 218, i32 4}
!145 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @dsp_rx_off_member._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @dsp_rx_off_member._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 225, i32 3}
!150 = !{ptr @dsp_rx_off_member._entry.62, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @dsp_rx_off_member._entry_ptr.64, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 231, i32 3}
!154 = !{ptr @dsp_rx_off_member._entry.65, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @dsp_rx_off_member._entry_ptr.67, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 290, i32 3}
!158 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @dsp_control_req._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @dsp_control_req._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 304, i32 4}
!163 = !{ptr @dsp_control_req._entry.70, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dsp_control_req._entry_ptr.72, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 307, i32 5}
!167 = !{ptr @dsp_control_req._entry.73, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dsp_control_req._entry_ptr.75, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 321, i32 4}
!171 = !{ptr @dsp_control_req._entry.76, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dsp_control_req._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 334, i32 4}
!175 = !{ptr @dsp_control_req._entry.79, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @dsp_control_req._entry_ptr.81, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 345, i32 4}
!179 = !{ptr @dsp_control_req._entry.82, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @dsp_control_req._entry_ptr.84, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 362, i32 4}
!183 = !{ptr @dsp_control_req._entry.85, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @dsp_control_req._entry_ptr.87, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 378, i32 4}
!187 = !{ptr @dsp_control_req._entry.88, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @dsp_control_req._entry_ptr.90, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 398, i32 4}
!191 = !{ptr @dsp_control_req._entry.91, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @dsp_control_req._entry_ptr.93, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 415, i32 4}
!195 = !{ptr @dsp_control_req._entry.94, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @dsp_control_req._entry_ptr.96, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 424, i32 4}
!199 = !{ptr @dsp_control_req._entry.97, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dsp_control_req._entry_ptr.99, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 434, i32 4}
!203 = !{ptr @dsp_control_req._entry.100, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @dsp_control_req._entry_ptr.102, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 442, i32 4}
!207 = !{ptr @dsp_control_req._entry.103, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @dsp_control_req._entry_ptr.105, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 449, i32 4}
!211 = !{ptr @dsp_control_req._entry.106, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dsp_control_req._entry_ptr.108, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 460, i32 4}
!215 = !{ptr @dsp_control_req._entry.109, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @dsp_control_req._entry_ptr.111, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 474, i32 4}
!219 = !{ptr @dsp_control_req._entry.112, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @dsp_control_req._entry_ptr.114, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.116, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 485, i32 4}
!223 = !{ptr @dsp_control_req._entry.115, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @dsp_control_req._entry_ptr.117, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.119, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 494, i32 4}
!227 = !{ptr @dsp_control_req._entry.118, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @dsp_control_req._entry_ptr.120, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 517, i32 4}
!231 = !{ptr @dsp_control_req._entry.121, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @dsp_control_req._entry_ptr.123, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.125, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 529, i32 4}
!235 = !{ptr @dsp_control_req._entry.124, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @dsp_control_req._entry_ptr.126, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.128, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 539, i32 4}
!239 = !{ptr @dsp_control_req._entry.127, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @dsp_control_req._entry_ptr.129, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.131, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 549, i32 4}
!243 = !{ptr @dsp_control_req._entry.130, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @dsp_control_req._entry_ptr.132, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.134, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 558, i32 4}
!247 = !{ptr @dsp_control_req._entry.133, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @dsp_control_req._entry_ptr.135, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.137, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 580, i32 4}
!251 = !{ptr @dsp_control_req._entry.136, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @dsp_control_req._entry_ptr.138, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.140, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 610, i32 4}
!255 = !{ptr @dsp_control_req._entry.139, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @dsp_control_req._entry_ptr.141, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 618, i32 4}
!259 = !{ptr @dsp_control_req._entry.142, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @dsp_control_req._entry_ptr.144, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.145, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 633, i32 4}
!263 = !{ptr @.str.146, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @get_features._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @get_features._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 640, i32 3}
!268 = !{ptr @get_features._entry.147, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @get_features._entry_ptr.149, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @get_features._entry.150, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 654, i32 4}
!272 = !{ptr @get_features._entry_ptr.151, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.153, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 659, i32 4}
!275 = !{ptr @get_features._entry.152, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @get_features._entry_ptr.154, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.155, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 263, i32 4}
!279 = !{ptr @.str.156, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @dsp_fill_empty._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @dsp_fill_empty._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @dsp_fill_empty._entry.157, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 271, i32 3}
!284 = !{ptr @dsp_fill_empty._entry_ptr.158, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.160, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 276, i32 3}
!287 = !{ptr @dsp_fill_empty._entry.159, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @dsp_fill_empty._entry_ptr.161, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.162, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 958, i32 3}
!291 = !{ptr @.str.163, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @dsp_ctrl._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @dsp_ctrl._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.165, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 980, i32 4}
!296 = !{ptr @dsp_ctrl._entry.164, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @dsp_ctrl._entry_ptr.166, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.168, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 988, i32 4}
!300 = !{ptr @dsp_ctrl._entry.167, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @dsp_ctrl._entry_ptr.169, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.171, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 994, i32 4}
!304 = !{ptr @dsp_ctrl._entry.170, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @dsp_ctrl._entry_ptr.172, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.173, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1120, i32 2}
!308 = !{ptr @.str.174, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @dsp_init._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @dsp_init._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.176, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1129, i32 4}
!313 = !{ptr @dsp_init._entry.175, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @dsp_init._entry_ptr.177, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.179, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1135, i32 4}
!317 = !{ptr @dsp_init._entry.178, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @dsp_init._entry_ptr.180, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.182, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1142, i32 4}
!321 = !{ptr @dsp_init._entry.181, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @dsp_init._entry_ptr.183, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.185, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1162, i32 3}
!325 = !{ptr @dsp_init._entry.184, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @dsp_init._entry_ptr.186, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.188, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1169, i32 2}
!329 = !{ptr @dsp_init._entry.187, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @dsp_init._entry_ptr.189, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.191, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1186, i32 3}
!333 = !{ptr @dsp_init._entry.190, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @dsp_init._entry_ptr.192, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.194, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1193, i32 3}
!337 = !{ptr @dsp_init._entry.193, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @dsp_init._entry_ptr.195, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @dsp_init.__key, !340, !"__key", i1 false, i1 false}
!340 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 1198, i32 2}
!341 = !{ptr @.str.196, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.197, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 163, i32 41}
!344 = distinct !{null, !345, !"mISDN_dsp_revision", i1 false, i1 false}
!345 = !{!"../drivers/isdn/mISDN/dsp_core.c", i32 163, i32 20}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{!"branch_weights", i32 1, i32 2000}
