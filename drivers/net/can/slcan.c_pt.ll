; ModuleID = '/llk/IR_all_yes/drivers/net/can/slcan.c_pt.bc'
source_filename = "../drivers/net/can/slcan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.127 }
%union.anon.127 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.92, %struct.anon.93, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.92 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.93 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.slcan = type { i32, ptr, ptr, %struct.spinlock, %struct.work_struct, [33 x i8], i32, [33 x i8], ptr, i32, i32 }
%struct.can_frame = type { i32, %union.anon.148, i8, i8, i8, [8 x i8] }
%union.anon.148 = type { i8 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
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
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@__UNIQUE_ID_alias457 = internal constant [25 x i8] c"slcan.alias=tty-ldisc-17\00", section ".modinfo", align 1
@__UNIQUE_ID_description458 = internal constant [44 x i8] c"slcan.description=serial line CAN interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file459 = internal constant [33 x i8] c"slcan.file=drivers/net/can/slcan\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [18 x i8] c"slcan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author461 = internal constant [54 x i8] c"slcan.author=Oliver Hartkopp <socketcan@hartkopp.net>\00", section ".modinfo", align 1
@__param_str_maxdev = internal constant [13 x i8] c"slcan.maxdev\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@maxdev = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_maxdev = internal constant %struct.kernel_param { ptr @__param_str_maxdev, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.127 { ptr @maxdev } }, section "__param", align 4
@__UNIQUE_ID_maxdevtype462 = internal constant [26 x i8] c"slcan.parmtype=maxdev:int\00", section ".modinfo", align 1
@__UNIQUE_ID_maxdev463 = internal constant [53 x i8] c"slcan.parm=maxdev:Maximum number of slcan interfaces\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@slcan_devs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@slcan_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: tty discipline still running\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slcan_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/can/slcan.c\00", [40 x i8] zeroinitializer }, align 32
@slcan_exit._entry_ptr = internal global ptr @slcan_exit._entry, section ".printk_index", align 4
@slc_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.3, i32 17, ptr @slcan_open, ptr @slcan_close, ptr null, ptr null, ptr null, ptr @slcan_ioctl, ptr null, ptr null, ptr null, ptr @slcan_hangup, ptr @slcan_receive_buf, ptr @slcan_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_slcan__469_792_slcan_init6 = internal global ptr @slcan_init, section ".initcall6.init", align 4
@__exitcall_slcan_exit = internal global ptr @slcan_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slcan\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slcan%d\00", [24 x i8] zeroinitializer }, align 32
@slc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sl->lock\00", [22 x i8] zeroinitializer }, align 32
@slc_alloc.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&sl->tx_work)\00", [32 x i8] zeroinitializer }, align 32
@slc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @slc_open, ptr @slc_close, ptr @slc_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @slcan_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@slc_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: xmit: iface is down\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slc_xmit\00", [23 x i8] zeroinitializer }, align 32
@slc_xmit._entry_ptr = internal global ptr @slc_xmit._entry, section ".printk_index", align 4
@hex_asc_upper = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Overwriting already set ml_priv_type (%u) with different ml_priv_type (%u)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Overwriting already set ml_priv and ml_priv_type is ML_PRIV_NONE!\0A\00", [61 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@slcan_write_wakeup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@slcan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016slcan: serial line CAN interface driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slcan_init\00", [21 x i8] zeroinitializer }, align 32
@slcan_init._entry_ptr = internal global ptr @slcan_init._entry, section ".printk_index", align 4
@slcan_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016slcan: %d dynamic interface channels.\0A\00", [55 x i8] zeroinitializer }, align 32
@slcan_init._entry_ptr.24 = internal global ptr @slcan_init._entry.22, section ".printk_index", align 4
@slcan_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013slcan: can't register line discipline\0A\00", [55 x i8] zeroinitializer }, align 32
@slcan_init._entry_ptr.27 = internal global ptr @slcan_init._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35088, i64 35108]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 13]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 82, i64 84, i64 114, i64 116]
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"maxdev\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 67, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"slcan_devs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 101, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 779, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"slc_ldisc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 701, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 704, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 538, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 552, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 553, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"slc_netdev_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 434, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 368, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 2430, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 2433, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 230, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 214, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 174, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 351, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 695, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 720, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 721, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [27 x i8] c"../drivers/net/can/slcan.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 730, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias457, ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description458, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__UNIQUE_ID_maxdev463, ptr @__UNIQUE_ID_maxdevtype462, ptr @__exitcall_slcan_exit, ptr @__initcall__kmod_slcan__469_792_slcan_init6, ptr @__param_maxdev, ptr @slc_xmit._entry, ptr @slc_xmit._entry_ptr, ptr @slcan_exit, ptr @slcan_exit._entry, ptr @slcan_exit._entry_ptr, ptr @slcan_init._entry, ptr @slcan_init._entry.22, ptr @slcan_init._entry.25, ptr @slcan_init._entry_ptr, ptr @slcan_init._entry_ptr.24, ptr @slcan_init._entry_ptr.27, ptr @maxdev, ptr @slcan_devs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @slc_ldisc, ptr @.str.3, ptr @.str.4, ptr @slc_alloc.__key, ptr @.str.5, ptr @slc_alloc.__key.6, ptr @.str.7, ptr @slc_netdev_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slcan_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slcan_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slc_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slc_alloc.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slc_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slcan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slcan_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slcan_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @slcan_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load ptr, ptr @slcan_devs, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end2.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2.preheader:                                ; preds = %entry
  %add.neg = sub i32 -100, %0
  %2 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp36072 = icmp sgt i32 %2, 0
  br i1 %cmp36072, label %if.end2.preheader.for.body_crit_edge, label %if.end2.preheader.for.end35_crit_edge

if.end2.preheader.for.end35_crit_edge:            ; preds = %if.end2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

if.end2.preheader.for.body_crit_edge:             ; preds = %if.end2.preheader
  br label %for.body

if.then1:                                         ; preds = %land.rhs
  %call = tail call i32 @msleep_interruptible(i32 noundef 100) #14
  %3 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp360 = icmp sgt i32 %3, 0
  br i1 %cmp360, label %if.then1.for.body.backedge_crit_edge, label %if.then1.for.end35_crit_edge

if.then1.for.end35_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

if.then1.for.body.backedge_crit_edge:             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.backedge

for.body:                                         ; preds = %for.body.backedge, %if.end2.preheader.for.body_crit_edge
  %i.062 = phi i32 [ %i.062.be, %for.body.backedge ], [ 0, %if.end2.preheader.for.body_crit_edge ]
  %busy.161 = phi i32 [ %busy.161.be, %for.body.backedge ], [ 0, %if.end2.preheader.for.body_crit_edge ]
  %4 = load ptr, ptr @slcan_devs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.062
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %lock = getelementptr i8, ptr %6, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tty = getelementptr i8, ptr %6, i32 2308
  %7 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %busy.161, 1
  tail call void @tty_hangup(ptr noundef nonnull %8) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %busy.2 = phi i32 [ %inc, %if.then9 ], [ %busy.161, %if.end6.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %busy.3 = phi i32 [ %busy.2, %if.end11 ], [ %busy.161, %for.body.for.inc_crit_edge ]
  %inc13 = add nuw nsw i32 %i.062, 1
  %9 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13, i32 %9)
  %cmp3 = icmp slt i32 %inc13, %9
  br i1 %cmp3, label %for.inc.for.body.backedge_crit_edge, label %do.cond

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.then1.for.body.backedge_crit_edge
  %i.062.be = phi i32 [ %inc13, %for.inc.for.body.backedge_crit_edge ], [ 0, %if.then1.for.body.backedge_crit_edge ]
  %busy.161.be = phi i32 [ %busy.3, %for.inc.for.body.backedge_crit_edge ], [ 0, %if.then1.for.body.backedge_crit_edge ]
  br label %for.body

do.cond:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy.3)
  %tobool14.not = icmp eq i32 %busy.3, 0
  br i1 %tobool14.not, label %do.cond.do.end_crit_edge, label %land.rhs

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.rhs:                                         ; preds = %do.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %if.then1, label %do.endthread-pre-split

do.endthread-pre-split:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %.pr = load i32, ptr @maxdev, align 4
  br label %do.end

do.end:                                           ; preds = %do.endthread-pre-split, %do.cond.do.end_crit_edge
  %11 = phi i32 [ %.pr, %do.endthread-pre-split ], [ %9, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1763 = icmp sgt i32 %11, 0
  br i1 %cmp1763, label %do.end.for.body18_crit_edge, label %do.end.for.end35_crit_edge

do.end.for.end35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

do.end.for.body18_crit_edge:                      ; preds = %do.end
  br label %for.body18

for.body18:                                       ; preds = %for.inc33.for.body18_crit_edge, %do.end.for.body18_crit_edge
  %i.164 = phi i32 [ %inc34, %for.inc33.for.body18_crit_edge ], [ 0, %do.end.for.body18_crit_edge ]
  %12 = load ptr, ptr @slcan_devs, align 4
  %arrayidx19 = getelementptr ptr, ptr %12, i32 %i.164
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %for.body18.for.inc33_crit_edge, label %if.end22

for.body18.for.inc33_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc33

if.end22:                                         ; preds = %for.body18
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx19, align 4
  %tty25 = getelementptr i8, ptr %14, i32 2308
  %16 = ptrtoint ptr %tty25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty25, align 4
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end22.if.end32_crit_edge, label %do.end30

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %14) #17
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end22.if.end32_crit_edge
  tail call void @unregister_netdev(ptr noundef nonnull %14) #14
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32, %for.body18.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.164, 1
  %18 = load i32, ptr @maxdev, align 4
  %cmp17 = icmp slt i32 %inc34, %18
  br i1 %cmp17, label %for.inc33.for.body18_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end35

for.inc33.for.body18_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %do.end.for.end35_crit_edge, %if.then1.for.end35_crit_edge, %if.end2.preheader.for.end35_crit_edge
  %19 = load ptr, ptr @slcan_devs, align 4
  tail call void @kfree(ptr noundef %19) #14
  store ptr null, ptr @slcan_devs, align 4
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @slc_ldisc) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @slcan_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i32 4, ptr @maxdev, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #17
  %1 = load i32, ptr @maxdev, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %1) #17
  %2 = load i32, ptr @maxdev, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #14
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !93

kcalloc.exit.thread:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @slcan_devs, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #18
  store ptr %call8.i.i, ptr @slcan_devs, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end8

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end7.i.i
  %call9 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @slc_ldisc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #17
  %6 = load ptr, ptr @slcan_devs, align 4
  tail call void @kfree(ptr noundef %6) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call9, %do.end14 ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slcan_open(ptr noundef %tty) #4 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @rtnl_lock() #14
  %4 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp12.i = icmp sgt i32 %4, 0
  br i1 %cmp12.i, label %if.end2.for.body.i_crit_edge, label %if.end2.slc_sync.exit_crit_edge

if.end2.slc_sync.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_sync.exit

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %5 = load ptr, ptr @slcan_devs, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %7, null
  br i1 %cmp1.i, label %for.body.i.slc_sync.exit_crit_edge, label %if.end.i

for.body.i.slc_sync.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_sync.exit

if.end.i:                                         ; preds = %for.body.i
  %tty.i = getelementptr i8, ptr %7, i32 2308
  %8 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end3.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end3.i.for.inc.i_crit_edge, label %if.then5.i

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dev_close(ptr noundef nonnull %7) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end3.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %12 = load i32, ptr @maxdev, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.slc_sync.exit_crit_edge

for.inc.i.slc_sync.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_sync.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

slc_sync.exit:                                    ; preds = %for.inc.i.slc_sync.exit_crit_edge, %for.body.i.slc_sync.exit_crit_edge, %if.end2.slc_sync.exit_crit_edge
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %13 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %slc_sync.exit.if.end5_crit_edge, label %land.lhs.true

slc_sync.exit.if.end5_crit_edge:                  ; preds = %slc_sync.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true:                                    ; preds = %slc_sync.exit
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %16)
  %cmp3 = icmp eq i32 %16, 21450
  br i1 %cmp3, label %land.lhs.true.err_exit_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.err_exit_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_exit

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %slc_sync.exit.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #14
  %17 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %18 = load i32, ptr @maxdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp48.i = icmp sgt i32 %18, 0
  br i1 %cmp48.i, label %for.body.lr.ph.i, label %if.end5.slc_alloc.exit.thread_crit_edge

if.end5.slc_alloc.exit.thread_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_alloc.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end5
  %19 = load ptr, ptr @slcan_devs, align 4
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.inc.i51.for.body.i49_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i50, %for.inc.i51.for.body.i49_crit_edge ]
  %arrayidx.i47 = getelementptr ptr, ptr %19, i32 %i.049.i
  %20 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i47, align 4
  %cmp1.i48 = icmp eq ptr %21, null
  br i1 %cmp1.i48, label %if.end4.i, label %for.inc.i51

for.inc.i51:                                      ; preds = %for.body.i49
  %inc.i50 = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i50, %18
  br i1 %exitcond.not.i, label %for.inc.i51.slc_alloc.exit.thread_crit_edge, label %for.inc.i51.for.body.i49_crit_edge

for.inc.i51.for.body.i49_crit_edge:               ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i49

for.inc.i51.slc_alloc.exit.thread_crit_edge:      ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_alloc.exit.thread

if.end4.i:                                        ; preds = %for.body.i49
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.4, i32 noundef %i.049.i) #14
  %call6.i = call ptr @alloc_netdev_mqs(i32 noundef 12504, ptr noundef nonnull %name.i, i8 noundef zeroext 0, ptr noundef nonnull @slc_setup, i32 noundef 1, i32 noundef 1) #14
  %tobool.not.i52 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i52, label %if.end4.i.slc_alloc.exit.thread_crit_edge, label %if.end8.i

if.end4.i.slc_alloc.exit.thread_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_alloc.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.049.i, ptr %base_addr.i, align 32
  %add.ptr.i.i = getelementptr i8, ptr %call6.i, i32 2304
  %add.ptr.i = getelementptr i8, ptr %call6.i, i32 2496
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 129
  %23 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %do.end.i.i.i, label %if.end8.i.if.end.i.i.i_crit_edge, !prof !93

if.end8.i.if.end.i.i.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef 1) #14
  %26 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i.i.i = load i32, ptr %ml_priv_type.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.end8.i.if.end.i.i.i_crit_edge
  %27 = phi i32 [ %.pr.i.i.i, %do.end.i.i.i ], [ %24, %if.end8.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool24.not.i.i.i, label %land.rhs25.i.i.i, label %if.end.i.i.i.slc_alloc.exit_crit_edge

if.end.i.i.i.slc_alloc.exit_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_alloc.exit

land.rhs25.i.i.i:                                 ; preds = %if.end.i.i.i
  %ml_priv26.i.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 128
  %28 = ptrtoint ptr %ml_priv26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ml_priv26.i.i.i, align 8
  %tobool27.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool27.not.i.i.i, label %land.rhs25.i.i.i.slc_alloc.exit_crit_edge, label %do.end44.i.i.i, !prof !94

land.rhs25.i.i.i.slc_alloc.exit_crit_edge:        ; preds = %land.rhs25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_alloc.exit

do.end44.i.i.i:                                   ; preds = %land.rhs25.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2434, i32 noundef 9, ptr noundef nonnull @.str.12) #14
  br label %slc_alloc.exit

slc_alloc.exit.thread:                            ; preds = %if.end4.i.slc_alloc.exit.thread_crit_edge, %for.inc.i51.slc_alloc.exit.thread_crit_edge, %if.end5.slc_alloc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #14
  br label %err_exit

slc_alloc.exit:                                   ; preds = %do.end44.i.i.i, %land.rhs25.i.i.i.slc_alloc.exit_crit_edge, %if.end.i.i.i.slc_alloc.exit_crit_edge
  %ml_priv58.i.i.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 128
  %30 = ptrtoint ptr %ml_priv58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %ml_priv58.i.i.i, align 8
  %31 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %ml_priv_type.i.i.i, align 4
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 21450, ptr %add.ptr.i.i, align 4
  %dev10.i = getelementptr i8, ptr %call6.i, i32 2312
  %33 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call6.i, ptr %dev10.i, align 4
  %lock.i = getelementptr i8, ptr %call6.i, i32 2316
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @slc_alloc.__key, i16 noundef signext 3) #14
  %tx_work.i = getelementptr i8, ptr %call6.i, i32 2360
  call void @__init_work(ptr noundef %tx_work.i, i32 noundef 0) #14
  %34 = ptrtoint ptr %tx_work.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %tx_work.i, align 4
  %lockdep_map.i = getelementptr i8, ptr %call6.i, i32 2376
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @slc_alloc.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry16.i = getelementptr i8, ptr %call6.i, i32 2364
  %35 = ptrtoint ptr %entry16.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry16.i, ptr %entry16.i, align 4
  %prev.i.i = getelementptr i8, ptr %call6.i, i32 2368
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry16.i, ptr %prev.i.i, align 4
  %func.i = getelementptr i8, ptr %call6.i, i32 2372
  %37 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @slcan_transmit, ptr %func.i, align 4
  %38 = load ptr, ptr @slcan_devs, align 4
  %arrayidx20.i = getelementptr ptr, ptr %38, i32 %i.049.i
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call6.i, ptr %arrayidx20.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #14
  %cmp7 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp7, label %slc_alloc.exit.err_exit_crit_edge, label %if.end9

slc_alloc.exit.err_exit_crit_edge:                ; preds = %slc_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_exit

if.end9:                                          ; preds = %slc_alloc.exit
  %tty10 = getelementptr i8, ptr %call6.i, i32 2308
  %40 = ptrtoint ptr %tty10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tty, ptr %tty10, align 4
  %41 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i, ptr %disc_data, align 4
  %flags = getelementptr i8, ptr %call6.i, i32 2488
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.then14, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then14:                                        ; preds = %if.end9
  %rcount = getelementptr i8, ptr %call6.i, i32 2440
  %44 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rcount, align 4
  %xleft = getelementptr i8, ptr %call6.i, i32 2484
  %45 = ptrtoint ptr %xleft to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %xleft, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  %46 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev10.i, align 4
  %call16 = call i32 @register_netdevice(ptr noundef %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %err_free_chan

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  call void @rtnl_unlock() #14
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %48 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65536, ptr %receive_room, align 4
  br label %cleanup

err_free_chan:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %tty10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %tty10, align 4
  %50 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %disc_data, align 4
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #14
  %51 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev10.i, align 4
  %base_addr.i53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %base_addr.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_addr.i53, align 32
  %55 = load ptr, ptr @slcan_devs, align 4
  %arrayidx.i54 = getelementptr ptr, ptr %55, i32 %54
  %56 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx.i54, align 4
  call void @rtnl_unlock() #14
  %57 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev10.i, align 4
  call void @free_netdev(ptr noundef %58) #14
  br label %cleanup

err_exit:                                         ; preds = %slc_alloc.exit.err_exit_crit_edge, %slc_alloc.exit.thread, %land.lhs.true.err_exit_crit_edge
  %err.0 = phi i32 [ -17, %land.lhs.true.err_exit_crit_edge ], [ -23, %slc_alloc.exit.err_exit_crit_edge ], [ -23, %slc_alloc.exit.thread ]
  call void @rtnl_unlock() #14
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %err_free_chan, %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_exit ], [ 0, %if.end20 ], [ %call16, %err_free_chan ], [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slcan_close(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %3)
  %cmp.not = icmp eq i32 %3, 21450
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %tty2 = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tty2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty2, align 4
  %cmp3.not = icmp eq ptr %5, %tty
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %6 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %disc_data, align 4
  %7 = ptrtoint ptr %tty2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tty2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  tail call void @synchronize_rcu() #14
  %tx_work = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #14
  %dev = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slcan_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %3)
  %cmp.not = icmp eq i32 %3, 21450
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 35088, label %sw.bb
    i32 35108, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %dev = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call = tail call i32 @strlen(ptr noundef %6) #19
  %add = add i32 %call, 1
  %7 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sw.bb
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !94

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %6, i32 noundef %add, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %add, i32 -1226833920) #20, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef %add) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef %6, i32 noundef %add) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool5.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.default ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slcan_hangup(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.slcan_close.exit_crit_edge, label %lor.lhs.false.i

entry.slcan_close.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %slcan_close.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 21450
  br i1 %cmp.not.i, label %lor.lhs.false1.i, label %lor.lhs.false.i.slcan_close.exit_crit_edge

lor.lhs.false.i.slcan_close.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slcan_close.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %tty2.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty2.i, align 4
  %cmp3.not.i = icmp eq ptr %5, %tty
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false1.i.slcan_close.exit_crit_edge

lor.lhs.false1.i.slcan_close.exit_crit_edge:      ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slcan_close.exit

if.end.i:                                         ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #16
  %lock.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %6 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %disc_data.i, align 4
  %7 = ptrtoint ptr %tty2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tty2.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  tail call void @synchronize_rcu() #14
  %tx_work.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 4
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %tx_work.i) #14
  %dev.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void @unregister_netdev(ptr noundef %9) #14
  br label %slcan_close.exit

slcan_close.exit:                                 ; preds = %if.end.i, %lor.lhs.false1.i.slcan_close.exit_crit_edge, %lor.lhs.false.i.slcan_close.exit_crit_edge, %entry.slcan_close.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slcan_receive_buf(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %cp, ptr noundef readonly %fp, i32 noundef %count) #4 align 64 {
entry:
  %cf.i.i = alloca %struct.can_frame, align 8
  %tmpid.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %3)
  %cmp.not = icmp eq i32 %3, 21450
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not22 = icmp eq i32 %count, 0
  %or.cond = or i1 %tobool.i.not, %tobool2.not22
  br i1 %or.cond, label %lor.lhs.false1.cleanup_crit_edge, label %while.body.lr.ph

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph:                                 ; preds = %lor.lhs.false1
  %flags = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 10
  %rcount.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 6
  %8 = getelementptr inbounds %struct.can_frame, ptr %cf.i.i, i32 0, i32 1
  %rbuff.i.i = getelementptr inbounds %struct.slcan, ptr %1, i32 0, i32 5
  %arrayidx10.i.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 9
  %add.ptr13.i.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 10
  %arrayidx.i.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 4
  %add.ptr.i.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 5
  %add.ptr16.i.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec25.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec25, %while.cond.backedge.while.body_crit_edge ]
  %fp.addr.024 = phi ptr [ %fp, %while.body.lr.ph ], [ %fp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %cp.addr.023 = phi ptr [ %cp, %while.body.lr.ph ], [ %cp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dec25 = add i32 %dec25.in, -1
  %tobool3.not = icmp eq ptr %fp.addr.024, null
  br i1 %tobool3.not, label %while.body.if.end12_crit_edge, label %land.lhs.true

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true:                                    ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %fp.addr.024, i32 1
  %9 = ptrtoint ptr %fp.addr.024 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fp.addr.024, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %if.then5

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.while.cond.backedge_crit_edge

if.then5.while.cond.backedge_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 4
  %13 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else18.i, %if.then16.i, %if.else.i.while.cond.backedge_crit_edge, %if.end.i, %if.then8, %if.then5.while.cond.backedge_crit_edge
  %fp.addr.0.be = phi ptr [ %fp.addr.1, %if.end.i ], [ %fp.addr.1, %if.else.i.while.cond.backedge_crit_edge ], [ %fp.addr.1, %if.then16.i ], [ %fp.addr.1, %if.else18.i ], [ %incdec.ptr, %if.then8 ], [ %incdec.ptr, %if.then5.while.cond.backedge_crit_edge ]
  %cp.addr.0.be = getelementptr i8, ptr %cp.addr.023, i32 1
  %tobool2.not = icmp eq i32 %dec25, 0
  br i1 %tobool2.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %fp.addr.1 = phi ptr [ %incdec.ptr, %land.lhs.true.if.end12_crit_edge ], [ null, %while.body.if.end12_crit_edge ]
  %15 = ptrtoint ptr %cp.addr.023 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cp.addr.023, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %16, label %if.else.i [
    i8 13, label %if.end12.if.then.i_crit_edge
    i8 7, label %if.end12.if.then.i_crit_edge26
  ]

if.end12.if.then.i_crit_edge26:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %if.end12.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge26
  %call.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %18 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp5.i = icmp sgt i32 %19, 4
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cf.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpid.i.i) #14
  %20 = ptrtoint ptr %tmpid.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmpid.i.i, align 4, !annotation !96
  %21 = call ptr @memset(ptr %cf.i.i, i32 0, i32 16)
  %22 = ptrtoint ptr %rbuff.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rbuff.i.i, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %23, label %if.then7.i.slc_bump.exit.i_crit_edge [
    i8 114, label %sw.bb.i.i
    i8 116, label %if.then7.i.sw.bb1.i.i_crit_edge
    i8 82, label %sw.bb5.i.i
    i8 84, label %if.then7.i.sw.bb7.i.i_crit_edge
  ]

if.then7.i.sw.bb7.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7.i.i

if.then7.i.sw.bb1.i.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1.i.i

if.then7.i.slc_bump.exit.i_crit_edge:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

sw.bb.i.i:                                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073741824, ptr %cf.i.i, align 8
  br label %sw.bb1.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i, %if.then7.i.sw.bb1.i.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %8, align 4
  store i8 0, ptr %arrayidx.i.i, align 4
  br label %sw.epilog.i.i

sw.bb5.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1073741824, ptr %cf.i.i, align 8
  br label %sw.bb7.i.i

sw.bb7.i.i:                                       ; preds = %sw.bb5.i.i, %if.then7.i.sw.bb7.i.i_crit_edge
  %30 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cf.i.i, align 8
  %or.i.i = or i32 %31, -2147483648
  store i32 %or.i.i, ptr %cf.i.i, align 8
  %32 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx10.i.i, align 1
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %8, align 4
  store i8 0, ptr %arrayidx10.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb7.i.i, %sw.bb1.i.i
  %cmd.0.i.i = phi ptr [ %add.ptr13.i.i, %sw.bb7.i.i ], [ %add.ptr.i.i, %sw.bb1.i.i ]
  %call.i.i.i = call i32 @kstrtouint(ptr noundef %add.ptr16.i.i, i32 noundef 16, ptr noundef nonnull %tmpid.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.epilog.i.i.slc_bump.exit.i_crit_edge

sw.epilog.i.i.slc_bump.exit.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  %35 = ptrtoint ptr %tmpid.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmpid.i.i, align 4
  %37 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cf.i.i, align 8
  %or18.i.i = or i32 %38, %36
  store i32 %or18.i.i, ptr %cf.i.i, align 8
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %8, align 4
  %41 = add i8 %40, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %41)
  %42 = icmp ult i8 %41, 9
  br i1 %42, label %if.then24.i.i, label %if.end.i.i.slc_bump.exit.i_crit_edge

if.end.i.i.slc_bump.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %8, align 4
  %and.i.i = and i32 %or18.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i, 0
  %tobool29.not.i.not.i = xor i1 %tobool29.not.i.i, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp32112.not.i.i = icmp eq i8 %41, 0
  %or.cond.i = select i1 %tobool29.not.i.not.i, i1 true, i1 %cmp32112.not.i.i
  br i1 %or.cond.i, label %if.then24.i.i.if.end52.i.i_crit_edge, label %for.body.i.preheader.i

if.then24.i.i.if.end52.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i.i

for.body.i.preheader.i:                           ; preds = %if.then24.i.i
  %conv31.i.i = zext i8 %41 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end46.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %cmd.1114.i.i = phi ptr [ %incdec.ptr41.i.i, %if.end46.i.i.for.body.i.i_crit_edge ], [ %cmd.0.i.i, %for.body.i.preheader.i ]
  %i.0113.i.i = phi i32 [ %inc.i.i, %if.end46.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %44 = ptrtoint ptr %cmd.1114.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %cmd.1114.i.i, align 1
  %call34.i.i = call i32 @hex_to_bin(i8 noundef zeroext %45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp35.i.i, label %for.body.i.i.slc_bump.exit.i_crit_edge, label %if.end38.i.i

for.body.i.i.slc_bump.exit.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

if.end38.i.i:                                     ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %cmd.1114.i.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i.i, align 1
  %call42.i.i = call i32 @hex_to_bin(i8 noundef zeroext %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %cmp43.i.i = icmp slt i32 %call42.i.i, 0
  br i1 %cmp43.i.i, label %if.end38.i.i.slc_bump.exit.i_crit_edge, label %if.end46.i.i

if.end38.i.i.slc_bump.exit.i_crit_edge:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

if.end46.i.i:                                     ; preds = %if.end38.i.i
  %arrayidx40.i.i = getelementptr %struct.can_frame, ptr %cf.i.i, i32 0, i32 5, i32 %i.0113.i.i
  %call34.tr.i.i = trunc i32 %call34.i.i to i8
  %conv39.i.i = shl i8 %call34.tr.i.i, 4
  %incdec.ptr41.i.i = getelementptr i8, ptr %cmd.1114.i.i, i32 2
  %48 = trunc i32 %call42.i.i to i8
  %conv51.i.i = or i8 %conv39.i.i, %48
  %49 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv51.i.i, ptr %arrayidx40.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0113.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i.i, %conv31.i.i
  br i1 %exitcond.not.i, label %if.end46.i.i.if.end52.i.i_crit_edge, label %if.end46.i.i.for.body.i.i_crit_edge

if.end46.i.i.for.body.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end46.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end46.i.i.if.end52.i.i_crit_edge, %if.then24.i.i.if.end52.i.i_crit_edge
  %call.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 32, i32 noundef 2592) #14
  %tobool54.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool54.not.i.i, label %if.end52.i.i.slc_bump.exit.i_crit_edge, label %if.end56.i.i

if.end52.i.i.slc_bump.exit.i_crit_edge:           ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_bump.exit.i

if.end56.i.i:                                     ; preds = %if.end52.i.i
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %52, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 12, ptr %protocol.i.i, align 8
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15
  %55 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 6655
  %bf.set59.i.i = or i16 %bf.clear.i.i, 8704
  store i16 %bf.set59.i.i, ptr %pkt_type.i.i, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 16
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %59, i32 16
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %60 = load ptr, ptr %dev, align 4
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ifindex.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %63 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i.i.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %64, align 8
  %66 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %skbcnt.i.i, align 4
  %call.i110.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 16) #14
  %68 = call ptr @memcpy(ptr %call.i110.i.i, ptr %cf.i.i, i32 16)
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %stats.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 36
  %71 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stats.i.i, align 8
  %inc66.i.i = add i32 %72, 1
  store i32 %inc66.i.i, ptr %stats.i.i, align 8
  br i1 %tobool29.not.i.i, label %if.then70.i.i, label %if.end56.i.i.if.end74.i.i_crit_edge

if.end56.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74.i.i

if.then70.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv71.i.i = zext i8 %41 to i32
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 36, i32 2
  %75 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_bytes.i.i, align 8
  %add.i.i = add i32 %76, %conv71.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 8
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then70.i.i, %if.end56.i.i.if.end74.i.i_crit_edge
  %call75.i.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i.i.i) #14
  br label %slc_bump.exit.i

slc_bump.exit.i:                                  ; preds = %if.end74.i.i, %if.end52.i.i.slc_bump.exit.i_crit_edge, %if.end38.i.i.slc_bump.exit.i_crit_edge, %for.body.i.i.slc_bump.exit.i_crit_edge, %if.end.i.i.slc_bump.exit.i_crit_edge, %sw.epilog.i.i.slc_bump.exit.i_crit_edge, %if.then7.i.slc_bump.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpid.i.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cf.i.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %slc_bump.exit.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %77 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %rcount.i, align 4
  br label %while.cond.backedge

if.else.i:                                        ; preds = %if.end12
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags, align 4
  %80 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool11.not.i = icmp eq i32 %80, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else.i.while.cond.backedge_crit_edge

if.else.i.while.cond.backedge_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.then12.i:                                      ; preds = %if.else.i
  %81 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %82)
  %cmp14.i = icmp ult i32 %82, 33
  br i1 %cmp14.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add nuw nsw i32 %82, 1
  %83 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %inc.i, ptr %rcount.i, align 4
  %arrayidx.i = getelementptr %struct.slcan, ptr %1, i32 0, i32 5, i32 %82
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %16, ptr %arrayidx.i, align 1
  br label %while.cond.backedge

if.else18.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 36, i32 11
  %87 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_over_errors.i, align 4
  %inc19.i = add i32 %88, 1
  store i32 %inc19.i, ptr %rx_over_errors.i, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slcan_write_wakeup(ptr noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !97
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %disc_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @slcan_write_wakeup.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @slcan_write_wakeup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 351, ptr noundef nonnull @.str.16) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  %tx_work = getelementptr inbounds %struct.slcan, ptr %5, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %tx_work) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !98
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #14
  %and.i.i.i.i.i22 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @slc_free_netdev(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = load ptr, ptr @slcan_devs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @slc_setup(ptr nocapture noundef writeonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @slc_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %priv_destructor = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 125
  %2 = ptrtoint ptr %priv_destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @slc_free_netdev, ptr %priv_destructor, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %5 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %tx_queue_len, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 280, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %flags, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 8, ptr %features, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @slcan_transmit(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tty = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21450, i32 %3)
  %cmp.not = icmp eq i32 %3, 21450
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %dev = getelementptr i8, ptr %work, i32 -48
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false1.if.then_crit_edge, label %if.end

lor.lhs.false1.if.then_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false1.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %xleft = getelementptr i8, ptr %work, i32 124
  %8 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp slt i32 %9, 1
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %tx_packets, align 4
  %12 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tty, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %17) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write, align 4
  %xhead = getelementptr i8, ptr %work, i32 120
  %22 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xhead, align 4
  %call13 = tail call i32 %21(ptr noundef nonnull %1, ptr noundef %23, i32 noundef %9) #14
  %24 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xleft, align 4
  %sub = sub i32 %25, %call13
  store i32 %sub, ptr %xleft, align 4
  %26 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xhead, align 4
  %add.ptr16 = getelementptr i8, ptr %27, i32 %call13
  store ptr %add.ptr16, ptr %xhead, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slc_open(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tty = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr i8, ptr %dev, i32 2488
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  store i32 %and, ptr %flags, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slc_close(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %tty = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %rcount = getelementptr i8, ptr %dev, i32 2440
  %4 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rcount, align 4
  %xleft = getelementptr i8, ptr %dev, i32 2484
  %5 = ptrtoint ptr %xleft to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xleft, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slc_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.not = icmp eq i32 %1, 16
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %dev) #17
  br label %out

if.end5:                                          ; preds = %if.end
  %tty = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty, align 4
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %out

if.end9:                                          ; preds = %if.end5
  %dev10 = getelementptr i8, ptr %dev, i32 2312
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev10, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %xbuff.i = getelementptr i8, ptr %dev, i32 2444
  %and.i = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 84, i8 82
  %14 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %..i, ptr %xbuff.i, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool4.not.i = icmp sgt i32 %16, -1
  br i1 %tobool4.not.i, label %if.else7.i, label %if.end9.if.end11.i_crit_edge

if.end9.if.end11.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.else7.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %17 = or i8 %..i, 32
  %18 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %xbuff.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else7.i, %if.end9.if.end11.i_crit_edge
  %.sink23 = phi i32 [ 2047, %if.else7.i ], [ 536870911, %if.end9.if.end11.i_crit_edge ]
  %.sink = phi i32 [ 2447, %if.else7.i ], [ 2452, %if.end9.if.end11.i_crit_edge ]
  %add.ptr10.i = getelementptr i8, ptr %dev, i32 %.sink
  %incdec.ptr.i = getelementptr i8, ptr %dev, i32 2445
  %cmp.not86.i = icmp ult ptr %add.ptr10.i, %incdec.ptr.i
  br i1 %cmp.not86.i, label %if.end11.i.while.end.i_crit_edge, label %while.body.i.preheader

if.end11.i.while.end.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.preheader:                           ; preds = %if.end11.i
  %and9.i = and i32 %13, %.sink23
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %id.188.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %and9.i, %while.body.i.preheader ]
  %endpos.187.i = phi ptr [ %incdec.ptr14.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr10.i, %while.body.i.preheader ]
  %and13.i = and i32 %id.188.i, 15
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %and13.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr14.i = getelementptr i8, ptr %endpos.187.i, i32 -1
  %21 = ptrtoint ptr %endpos.187.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %endpos.187.i, align 1
  %shr.i = lshr i32 %id.188.i, 4
  %cmp.not.i = icmp ult ptr %incdec.ptr14.i, %incdec.ptr.i
  br i1 %cmp.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end11.i.while.end.i_crit_edge
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool17.not.i = icmp sgt i32 %23, -1
  %cond.i = select i1 %tobool17.not.i, i32 3, i32 8
  %add.ptr18.i = getelementptr i8, ptr %incdec.ptr.i, i32 %cond.i
  %24 = getelementptr inbounds %struct.can_frame, ptr %11, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %add.i = add i8 %26, 48
  %incdec.ptr21.i = getelementptr i8, ptr %add.ptr18.i, i32 1
  %27 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add.i, ptr %add.ptr18.i, align 1
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %11, align 8
  %and23.i = and i32 %29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %for.cond.preheader.i, label %while.end.i.slc_encaps.exit_crit_edge

while.end.i.slc_encaps.exit_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %slc_encaps.exit

for.cond.preheader.i:                             ; preds = %while.end.i
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp2790.not.i = icmp eq i8 %31, 0
  br i1 %cmp2790.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %pos.092.i = phi ptr [ %incdec.ptr4.i.i, %for.body.i.for.body.i_crit_edge ], [ %incdec.ptr21.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.091.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.can_frame, ptr %11, i32 0, i32 5, i32 %i.091.i
  %32 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx29.i, align 1
  %conv.i.i = zext i8 %33 to i32
  %34 = lshr i32 %conv.i.i, 4
  %arrayidx.i.i = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %pos.092.i, i32 1
  %37 = ptrtoint ptr %pos.092.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %pos.092.i, align 1
  %and2.i.i = and i32 %conv.i.i, 15
  %arrayidx3.i.i = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %and2.i.i
  %38 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx3.i.i, align 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %pos.092.i, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %incdec.ptr.i.i, align 1
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %24, align 4
  %conv26.i = zext i8 %42 to i32
  %cmp27.i = icmp ult i32 %inc.i, %conv26.i
  br i1 %cmp27.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i.loopexit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv26.i.le = zext i8 %42 to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv26.i.le, %for.end.i.loopexit ]
  %pos.0.lcssa.i = phi ptr [ %incdec.ptr21.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %incdec.ptr4.i.i, %for.end.i.loopexit ]
  %43 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev10, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 3
  %45 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bytes.i, align 4
  %add31.i = add i32 %46, %.lcssa.i
  store i32 %add31.i, ptr %tx_bytes.i, align 4
  br label %slc_encaps.exit

slc_encaps.exit:                                  ; preds = %for.end.i, %while.end.i.slc_encaps.exit_crit_edge
  %pos.1.i = phi ptr [ %incdec.ptr21.i, %while.end.i.slc_encaps.exit_crit_edge ], [ %pos.0.lcssa.i, %for.end.i ]
  %incdec.ptr33.i = getelementptr i8, ptr %pos.1.i, i32 1
  %47 = ptrtoint ptr %pos.1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 13, ptr %pos.1.i, align 1
  %48 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tty, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %49, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #14
  %50 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tty, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr33.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %xbuff.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call40.i = tail call i32 %55(ptr noundef %51, ptr noundef %xbuff.i, i32 noundef %sub.ptr.sub.i) #14
  %sub.i = sub i32 %sub.ptr.sub.i, %call40.i
  %xleft.i = getelementptr i8, ptr %dev, i32 2484
  %56 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i, ptr %xleft.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %xbuff.i, i32 %call40.i
  %xhead.i = getelementptr i8, ptr %dev, i32 2480
  %57 = ptrtoint ptr %xhead.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr48.i, ptr %xhead.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %out

out:                                              ; preds = %slc_encaps.exit, %if.then7, %if.then2, %entry.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @slcan_change_mtu(ptr nocapture noundef readnone %dev, i32 noundef %new_mtu) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_mode_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !53, !55, !56, !58, !60, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__UNIQUE_ID_alias457, !1, !"__UNIQUE_ID_alias457", i1 false, i1 false}
!1 = !{!"../drivers/net/can/slcan.c", i32 60, i32 1}
!2 = !{ptr @__UNIQUE_ID_description458, !3, !"__UNIQUE_ID_description458", i1 false, i1 false}
!3 = !{!"../drivers/net/can/slcan.c", i32 61, i32 1}
!4 = !{ptr @__UNIQUE_ID_file459, !5, !"__UNIQUE_ID_file459", i1 false, i1 false}
!5 = !{!"../drivers/net/can/slcan.c", i32 62, i32 1}
!6 = !{ptr @__UNIQUE_ID_license460, !5, !"__UNIQUE_ID_license460", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author461, !8, !"__UNIQUE_ID_author461", i1 false, i1 false}
!8 = !{!"../drivers/net/can/slcan.c", i32 63, i32 1}
!9 = !{ptr @__param_maxdev, !10, !"__param_maxdev", i1 false, i1 false}
!10 = !{!"../drivers/net/can/slcan.c", i32 70, i32 1}
!11 = !{ptr @__UNIQUE_ID_maxdevtype462, !10, !"__UNIQUE_ID_maxdevtype462", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_maxdev463, !13, !"__UNIQUE_ID_maxdev463", i1 false, i1 false}
!13 = !{!"../drivers/net/can/slcan.c", i32 71, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/slcan.c", i32 779, i32 4}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @slcan_exit._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @slcan_exit._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_slcan__469_792_slcan_init6, !21, !"__initcall__kmod_slcan__469_792_slcan_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/can/slcan.c", i32 792, i32 1}
!22 = !{ptr @__exitcall_slcan_exit, !23, !"__exitcall_slcan_exit", i1 false, i1 false}
!23 = !{!"../drivers/net/can/slcan.c", i32 793, i32 1}
!24 = !{ptr @slcan_devs, !25, !"slcan_devs", i1 false, i1 false}
!25 = !{!"../drivers/net/can/slcan.c", i32 101, i32 28}
!26 = !{ptr @__param_str_maxdev, !10, !"__param_str_maxdev", i1 false, i1 false}
!27 = !{ptr @maxdev, !28, !"maxdev", i1 false, i1 false}
!28 = !{!"../drivers/net/can/slcan.c", i32 67, i32 12}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/slcan.c", i32 704, i32 11}
!31 = !{ptr @slc_ldisc, !32, !"slc_ldisc", i1 false, i1 false}
!32 = !{!"../drivers/net/can/slcan.c", i32 701, i32 29}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/slcan.c", i32 538, i32 16}
!35 = !{ptr @slc_alloc.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/net/can/slcan.c", i32 552, i32 2}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @slc_alloc.__key.6, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/can/slcan.c", i32 553, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @slc_netdev_ops, !42, !"slc_netdev_ops", i1 false, i1 false}
!42 = !{!"../drivers/net/can/slcan.c", i32 434, i32 36}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/slcan.c", i32 368, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @slc_xmit._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @slc_xmit._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/netdevice.h", i32 2430, i32 2}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/netdevice.h", i32 2433, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!55 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/net/can/slcan.c", i32 351, i32 7}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/slcan.c", i32 720, i32 2}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @slcan_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @slcan_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/slcan.c", i32 721, i32 2}
!77 = !{ptr @slcan_init._entry.22, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @slcan_init._entry_ptr.24, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/can/slcan.c", i32 730, i32 3}
!81 = !{ptr @slcan_init._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @slcan_init._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2152076681, i64 2152076706}
!96 = !{!"auto-init"}
!97 = !{i64 2149374454}
!98 = !{i64 2149374720}
