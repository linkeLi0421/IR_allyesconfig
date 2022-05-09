; ModuleID = '/llk/IR_all_yes/drivers/net/caif/caif_serial.c_pt.bc'
source_filename = "../drivers/net/caif/caif_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.100 }
%union.anon.100 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ser_device = type { %struct.caif_dev_common, %struct.list_head, ptr, %struct.sk_buff_head, ptr, i8, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, [128 x i8], [128 x i8], i8 }
%struct.caif_dev_common = type { ptr, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__UNIQUE_ID_file339 = internal constant [46 x i8] c"caif_serial.file=drivers/net/caif/caif_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [24 x i8] c"caif_serial.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [35 x i8] c"caif_serial.author=Sjur Brendeland\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [63 x i8] c"caif_serial.description=CAIF serial device TTY line discipline\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [46 x i8] c"caif_serial.file=drivers/net/caif/caif_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [24 x i8] c"caif_serial.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias345 = internal constant [31 x i8] c"caif_serial.alias=tty-ldisc-20\00", section ".modinfo", align 1
@__param_str_ser_loop = internal constant [21 x i8] c"caif_serial.ser_loop\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ser_loop = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ser_loop = internal constant %struct.kernel_param { ptr @__param_str_ser_loop, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.100 { ptr @ser_loop } }, section "__param", align 4
@__UNIQUE_ID_ser_looptype346 = internal constant [35 x i8] c"caif_serial.parmtype=ser_loop:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ser_loop347 = internal constant [58 x i8] c"caif_serial.parm=ser_loop:Run in simulated loopback mode.\00", section ".modinfo", align 1
@__param_str_ser_use_stx = internal constant [24 x i8] c"caif_serial.ser_use_stx\00", align 1
@ser_use_stx = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_ser_use_stx = internal constant %struct.kernel_param { ptr @__param_str_ser_use_stx, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.100 { ptr @ser_use_stx } }, section "__param", align 4
@__UNIQUE_ID_ser_use_stxtype348 = internal constant [38 x i8] c"caif_serial.parmtype=ser_use_stx:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ser_use_stx349 = internal constant [49 x i8] c"caif_serial.parm=ser_use_stx:STX enabled or not.\00", section ".modinfo", align 1
@__param_str_ser_use_fcs = internal constant [24 x i8] c"caif_serial.ser_use_fcs\00", align 1
@ser_use_fcs = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_ser_use_fcs = internal constant %struct.kernel_param { ptr @__param_str_ser_use_fcs, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.100 { ptr @ser_use_fcs } }, section "__param", align 4
@__UNIQUE_ID_ser_use_fcstype350 = internal constant [38 x i8] c"caif_serial.parmtype=ser_use_fcs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ser_use_fcs351 = internal constant [49 x i8] c"caif_serial.parm=ser_use_fcs:FCS enabled or not.\00", section ".modinfo", align 1
@__param_str_ser_write_chunk = internal constant [28 x i8] c"caif_serial.ser_write_chunk\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ser_write_chunk = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_ser_write_chunk = internal constant %struct.kernel_param { ptr @__param_str_ser_write_chunk, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.100 { ptr @ser_write_chunk } }, section "__param", align 4
@__UNIQUE_ID_ser_write_chunktype352 = internal constant [41 x i8] c"caif_serial.parmtype=ser_write_chunk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ser_write_chunk353 = internal constant [71 x i8] c"caif_serial.parm=ser_write_chunk:Maximum size of data written to UART.\00", section ".modinfo", align 1
@ser_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ser_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ser_list, ptr @ser_list }, [24 x i8] zeroinitializer }, align 32
@ser_release_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ser_release_list, ptr @ser_release_list }, [24 x i8] zeroinitializer }, align 32
@ser_release_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @ser_release_work, i64 4), ptr getelementptr (i8, ptr @ser_release_work, i64 4) }, ptr @ser_release, %struct.lockdep_map { ptr @ser_release_work, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@caif_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.2, i32 20, ptr @ldisc_open, ptr @ldisc_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ldisc_receive, ptr @ldisc_tx_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@debugfsdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_caif_serial__354_452_caif_ser_init6 = internal global ptr @caif_ser_init, section ".initcall6.init", align 4
@__exitcall_caif_ser_exit = internal global ptr @caif_ser_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ser_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ser_release_work\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"n_caif\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cf%s\00", [27 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @caif_net_open, ptr @caif_net_close, ptr @caif_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/caif/caif_serial.c\00", [33 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"last_tx_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"last_rx_msg\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ser_state\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tty_status\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ldisc_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 183, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Bytes received before initial transmission -bytes discarded.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ldisc_receive\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ldisc_receive._entry_ptr = internal global ptr @ldisc_receive._entry, section ".printk_index", align 4
@caif_ser_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cannot register CAIF ldisc=%d err=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caif_ser_init\00", [18 x i8] zeroinitializer }, align 32
@caif_ser_init._entry_ptr = internal global ptr @caif_ser_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"caif_serial\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"ser_loop\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 42, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"ser_use_stx\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"ser_use_fcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 50, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"ser_write_chunk\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 55, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"ser_lock\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"ser_list\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 39, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"ser_release_list\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 40, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"ser_release_work\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"caif_ldisc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 381, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"debugfsdir\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 60, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 38, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 317, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 384, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 335, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 391, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 252, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1984, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 98, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 101, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 104, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 107, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 181, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 435, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [34 x i8] c"../drivers/net/caif/caif_serial.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 437, i32 34 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_ser_loop347, ptr @__UNIQUE_ID_ser_looptype346, ptr @__UNIQUE_ID_ser_use_fcs351, ptr @__UNIQUE_ID_ser_use_fcstype350, ptr @__UNIQUE_ID_ser_use_stx349, ptr @__UNIQUE_ID_ser_use_stxtype348, ptr @__UNIQUE_ID_ser_write_chunk353, ptr @__UNIQUE_ID_ser_write_chunktype352, ptr @__exitcall_caif_ser_exit, ptr @__initcall__kmod_caif_serial__354_452_caif_ser_init6, ptr @__param_ser_loop, ptr @__param_ser_use_fcs, ptr @__param_ser_use_stx, ptr @__param_ser_write_chunk, ptr @caif_ser_exit, ptr @caif_ser_init._entry, ptr @caif_ser_init._entry_ptr, ptr @ldisc_receive._entry, ptr @ldisc_receive._entry_ptr, ptr @ser_loop, ptr @ser_use_stx, ptr @ser_use_fcs, ptr @ser_write_chunk, ptr @ser_lock, ptr @ser_list, ptr @ser_release_list, ptr @ser_release_work, ptr @caif_ldisc, ptr @debugfsdir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @netdev_ops, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_loop to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_use_stx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_use_fcs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_write_chunk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_release_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_release_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfsdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldisc_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_ser_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @caif_ser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef nonnull @ser_lock) #8
  %0 = load volatile ptr, ptr @ser_list, align 4
  %cmp.i.not.i = icmp eq ptr %0, @ser_list
  br i1 %cmp.i.not.i, label %entry.list_splice.exit_crit_edge, label %if.then.i

entry.list_splice.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @ser_release_list, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ser_list, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ser_release_list, ptr %prev3.i.i, align 4
  store ptr %0, ptr @ser_release_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %2, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %entry.list_splice.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ser_lock) #8
  tail call void @ser_release(ptr noundef null)
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @ser_release_work) #8
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @caif_ldisc) #8
  %6 = load ptr, ptr @debugfsdir, align 4
  tail call void @debugfs_remove(ptr noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ser_release(ptr nocapture noundef readnone %work) #1 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @ser_lock) #8
  %1 = load ptr, ptr @ser_release_list, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %list, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i.i, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ser_release_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %0, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  store volatile ptr @ser_release_list, ptr @ser_release_list, align 4
  store ptr @ser_release_list, ptr getelementptr inbounds (%struct.list_head, ptr @ser_release_list, i32 0, i32 1), align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @ser_lock) #8
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %8, %list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @rtnl_lock() #8
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %cmp.not19 = icmp eq ptr %10, %list
  br i1 %cmp.not19, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %10, %if.then.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %dev = getelementptr i8, ptr %.pn.in20, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void @dev_close(ptr noundef %13) #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void @unregister_netdevice_queue(ptr noundef %15, ptr noundef null) #8
  %debugfs_tty_dir.i = getelementptr i8, ptr %.pn.in20, i32 80
  %16 = ptrtoint ptr %debugfs_tty_dir.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_tty_dir.i, align 4
  call void @debugfs_remove(ptr noundef %17) #8
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @rtnl_unlock() #8
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_ser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @caif_ldisc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 20, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef null) #8
  store ptr %call2, ptr @debugfsdir, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ldisc_open(ptr noundef %tty) #1 align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 64)
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @capable(i32 noundef 26) #8
  br i1 %call1, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @ser_release(ptr noundef null)
  %name4 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 15
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef %name4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 15
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call11 = call ptr @alloc_netdev_mqs(i32 noundef 380, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @caifdev_setup, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %add.ptr.i = getelementptr i8, ptr %call11, i32 2304
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %if.end13.tty_kref_get.exit_crit_edge, label %if.then.i

if.end13.tty_kref_get.exit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_kref_get.exit

if.then.i:                                        ; preds = %if.end13
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #8
  %5 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #8, !srcloc !104
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !105

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !106

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tty_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %tty_kref_get.exit

tty_kref_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, %if.end13.tty_kref_get.exit_crit_edge
  %tty16 = getelementptr i8, ptr %call11, i32 2392
  %7 = ptrtoint ptr %tty16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tty, ptr %tty16, align 4
  %dev17 = getelementptr i8, ptr %call11, i32 2332
  %8 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %dev17, align 4
  %9 = load ptr, ptr @debugfsdir, align 4
  %call.i = call ptr @debugfs_create_dir(ptr noundef %name4, ptr noundef %9) #8
  %debugfs_tty_dir.i = getelementptr i8, ptr %call11, i32 2404
  %10 = ptrtoint ptr %debugfs_tty_dir.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %debugfs_tty_dir.i, align 4
  %tx_blob.i = getelementptr i8, ptr %call11, i32 2408
  %call2.i = call ptr @debugfs_create_blob(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %tx_blob.i) #8
  %11 = ptrtoint ptr %debugfs_tty_dir.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_tty_dir.i, align 4
  %rx_blob.i = getelementptr i8, ptr %call11, i32 2416
  %call4.i = call ptr @debugfs_create_blob(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %rx_blob.i) #8
  %13 = ptrtoint ptr %debugfs_tty_dir.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_tty_dir.i, align 4
  %state.i = getelementptr i8, ptr %call11, i32 2400
  call void @debugfs_create_x32(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %state.i) #8
  %15 = ptrtoint ptr %debugfs_tty_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_tty_dir.i, align 4
  %tty_status.i = getelementptr i8, ptr %call11, i32 2680
  call void @debugfs_create_x8(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %16, ptr noundef %tty_status.i) #8
  %tx_data.i = getelementptr i8, ptr %call11, i32 2552
  %17 = ptrtoint ptr %tx_blob.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tx_data.i, ptr %tx_blob.i, align 4
  %size.i = getelementptr i8, ptr %call11, i32 2412
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %size.i, align 4
  %rx_data.i = getelementptr i8, ptr %call11, i32 2424
  %19 = ptrtoint ptr %rx_blob.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_data.i, ptr %rx_blob.i, align 4
  %size14.i = getelementptr i8, ptr %call11, i32 2420
  %20 = ptrtoint ptr %size14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %size14.i, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %21 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4096, ptr %receive_room, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %22 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %disc_data, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  call void @_set_bit(i32 noundef 5, ptr noundef %flags) #8
  call void @rtnl_lock() #8
  %call18 = call i32 @register_netdevice(ptr noundef nonnull %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %tty_kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @tty_kref_put(ptr noundef %tty) #8
  call void @rtnl_unlock() #8
  call void @free_netdev(ptr noundef nonnull %call11) #8
  br label %cleanup

if.end21:                                         ; preds = %tty_kref_get.exit
  call void @_raw_spin_lock(ptr noundef nonnull @ser_lock) #8
  %node = getelementptr i8, ptr %call11, i32 2324
  %23 = load ptr, ptr @ser_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @ser_list, ptr noundef %23) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add.exit_crit_edge

if.end21.list_add.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %call11, i32 2328
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ser_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @ser_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end21.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ser_lock) #8
  call void @rtnl_unlock() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 103
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %29 = ptrtoint ptr %tty16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tty16, align 4
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stopped.i, align 4, !range !107
  %33 = shl nuw nsw i8 %32, 5
  %tco_stopped.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %tco_stopped.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tco_stopped.i, align 1, !range !107
  %36 = shl nuw nsw i8 %35, 3
  %or15.i = or i8 %36, %33
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 20, i32 4
  %37 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %packet.i, align 1, !range !107
  %39 = shl nuw nsw i8 %38, 2
  %or1016.i = or i8 %or15.i, %39
  %40 = ptrtoint ptr %tty_status.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or1016.i, ptr %tty_status.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then20, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then20 ], [ 0, %list_add.exit ], [ -95, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldisc_close(ptr nocapture noundef readonly %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tty1 = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty1, align 4
  tail call void @tty_kref_put(ptr noundef %3) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ser_lock) #8
  %node = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %10 = load ptr, ptr @ser_release_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @ser_release_list, ptr noundef %10) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i1.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev1.i.i1.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ser_release_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %node, ptr @ser_release_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ser_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef nonnull @ser_release_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldisc_receive(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %flags, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %use_stx = getelementptr inbounds %struct.caif_dev_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %use_stx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

land.lhs.true:                                    ; preds = %entry
  %tx_started = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tx_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_started, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.do.body3_crit_edge

land.lhs.true.do.body3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.10) #11
  br label %cleanup

do.body3:                                         ; preds = %land.lhs.true.do.body3_crit_edge, %entry.do.body3_crit_edge
  %dev4 = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.body8, label %do.end16, !prof !105

do.body8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/caif/caif_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

do.end16:                                         ; preds = %do.body3
  %add = add i32 %count, 1
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef nonnull %9, i32 noundef %add, i32 noundef 2592) #8
  %cmp18 = icmp eq ptr %call.i, null
  br i1 %cmp18, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  %call.i52 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %count) #8
  %10 = call ptr @memcpy(ptr %call.i52, ptr %data, i32 %count)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 247, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %17 = tail call i32 @llvm.umin.i32(i32 %count, i32 128) #8
  %rx_data.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 10
  %18 = call ptr @memcpy(ptr %rx_data.i, ptr %data, i32 %17)
  %rx_blob.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %rx_blob.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_data.i, ptr %rx_blob.i, align 4
  %size5.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %size5.i, align 4
  %call22 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 4
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %stats = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %stats, align 8
  %25 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev4, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 2
  br label %if.end32

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 36, i32 6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then24
  %rx_dropped.sink54 = phi ptr [ %rx_dropped, %if.else ], [ %rx_bytes, %if.then24 ]
  %.sink53 = phi i32 [ 1, %if.else ], [ %count, %if.then24 ]
  %27 = ptrtoint ptr %rx_dropped.sink54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_dropped.sink54, align 8
  %inc31 = add i32 %28, %.sink53
  store i32 %inc31, ptr %rx_dropped.sink54, align 8
  %tty.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tty.i, align 4
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 19, i32 1
  %31 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stopped.i, align 4, !range !107
  %33 = shl nuw nsw i8 %32, 5
  %tco_stopped.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %tco_stopped.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tco_stopped.i, align 1, !range !107
  %36 = shl nuw nsw i8 %35, 3
  %or15.i = or i8 %36, %33
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 20, i32 4
  %37 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %packet.i, align 1, !range !107
  %39 = shl nuw nsw i8 %38, 2
  %or1016.i = or i8 %or15.i, %39
  %tty_status.i = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 12
  %40 = ptrtoint ptr %tty_status.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or1016.i, ptr %tty_status.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end16.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ldisc_tx_wakeup(ptr noundef readonly %tty) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !105

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/caif/caif_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 291, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

do.end7:                                          ; preds = %entry
  %tty8 = getelementptr inbounds %struct.ser_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tty8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty8, align 4
  %cmp9.not = icmp eq ptr %3, %tty
  br i1 %cmp9.not, label %do.end7.if.end31_crit_edge, label %do.end25, !prof !106

do.end7.if.end31_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end25:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 292, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %do.end7.if.end31_crit_edge
  %call = tail call fastcc i32 @handle_tx(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caifdev_setup(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 822, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %mtu, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags, align 16
  %or = or i64 %6, 524288
  store i64 %or, ptr %priv_flags, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  %head = getelementptr i8, ptr %dev, i32 2336
  %lock.i = getelementptr i8, ptr %dev, i32 2348
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %head, ptr %head, align 4
  %prev.i.i = getelementptr i8, ptr %dev, i32 2340
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %dev, i32 2344
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %link_select = getelementptr i8, ptr %dev, i32 2308
  %11 = ptrtoint ptr %link_select to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %link_select, align 4
  %use_frag = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %use_frag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %use_frag, align 4
  %13 = load i8, ptr @ser_use_stx, align 1, !range !107
  %14 = zext i8 %13 to i32
  %use_stx = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %use_stx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %use_stx, align 4
  %16 = load i8, ptr @ser_use_fcs, align 1, !range !107
  %17 = zext i8 %16 to i32
  %use_fcs = getelementptr i8, ptr %dev, i32 2316
  %18 = ptrtoint ptr %use_fcs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %use_fcs, align 4
  %dev6 = getelementptr i8, ptr %dev, i32 2332
  %19 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_net_open(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_net_close(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_xmit(ptr noundef %skb, ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %qlen = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp = icmp ugt i32 %1, 100
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr i8, ptr %dev, i32 2400
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %cmp3.not = icmp eq ptr %3, null
  br i1 %cmp3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr i8, ptr %dev, i32 2332
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  tail call void %3(ptr noundef %5, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %head = getelementptr i8, ptr %dev, i32 2336
  tail call void @skb_queue_tail(ptr noundef %head, ptr noundef %skb) #8
  %call8 = tail call fastcc i32 @handle_tx(ptr noundef %add.ptr.i)
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_tx(ptr noundef %ser) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tty1 = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 4
  %0 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty1, align 4
  %tx_started = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 5
  %2 = ptrtoint ptr %tx_started to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %tx_started, align 4
  %state = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %head = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 3
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  %cmp.i108 = icmp eq ptr %4, %head
  %cmp.not107109 = icmp eq ptr %4, null
  %cmp.not110 = or i1 %cmp.i108, %cmp.not107109
  br i1 %cmp.not110, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %tty_status.i = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 12
  %dev = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end53.while.body_crit_edge, %while.body.lr.ph
  %5 = phi ptr [ %4, %while.body.lr.ph ], [ %42, %if.end53.while.body_crit_edge ]
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %call4 = tail call i32 @tty_write_room(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.body.while.end_crit_edge, label %if.end7

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end7:                                          ; preds = %while.body
  %8 = load i32, ptr @ser_write_chunk, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %call4, i32 %8)
  %10 = tail call i32 @llvm.smin.i32(i32 %7, i32 %9)
  %11 = load i8, ptr @ser_loop, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call16 = tail call i32 %15(ptr noundef %1, ptr noundef %17, i32 noundef %10) #8
  %18 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tty1, align 4
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stopped.i, align 4, !range !107
  %22 = shl nuw nsw i8 %21, 5
  %tco_stopped.i = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 19, i32 2
  %23 = ptrtoint ptr %tco_stopped.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tco_stopped.i, align 1, !range !107
  %25 = shl nuw nsw i8 %24, 3
  %or15.i = or i8 %25, %22
  %packet.i = getelementptr inbounds %struct.tty_struct, ptr %19, i32 0, i32 20, i32 4
  %26 = ptrtoint ptr %packet.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %packet.i, align 1, !range !107
  %28 = shl nuw nsw i8 %27, 2
  %or1016.i = or i8 %or15.i, %28
  %29 = ptrtoint ptr %tty_status.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or1016.i, ptr %tty_status.i, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %data17 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %30 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data17, align 4
  tail call void @ldisc_receive(ptr noundef %1, ptr noundef %31, ptr noundef null, i32 noundef %10)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %tty_wr.0 = phi i32 [ %10, %if.else ], [ %call16, %if.then15 ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 1
  %34 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx_packets, align 4
  %36 = load ptr, ptr %dev, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %38, %tty_wr.0
  store i32 %add, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tty_wr.0)
  %cmp21 = icmp slt i32 %tty_wr.0, 0
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end23

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end18
  %call24 = tail call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef %tty_wr.0) #8
  %39 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp26 = icmp eq i32 %40, 0
  br i1 %cmp26, label %if.then27, label %if.end23.if.end53_crit_edge

if.end23.if.end53_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then27:                                        ; preds = %if.end23
  %call29 = tail call ptr @skb_dequeue(ptr noundef %head) #8
  %cmp30.not = icmp eq ptr %call29, %5
  br i1 %cmp30.not, label %if.then27.if.end45_crit_edge, label %do.end, !prof !106

if.then27.if.end45_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 252, i32 noundef 9, ptr noundef null) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.then27.if.end45_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 0) #8
  br label %if.end53

if.end53:                                         ; preds = %if.end45, %if.end23.if.end53_crit_edge
  %41 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head, align 4
  %cmp.i = icmp eq ptr %42, %head
  %cmp.not107 = icmp eq ptr %42, null
  %cmp.not = or i1 %cmp.i, %cmp.not107
  br i1 %cmp.not, label %if.end53.while.end_crit_edge, label %if.end53.while.body_crit_edge

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %qlen = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %44)
  %cmp55 = icmp ult i32 %44, 11
  br i1 %cmp55, label %land.lhs.true, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %while.end
  %call57 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true59

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true59:                                  ; preds = %land.lhs.true
  %45 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ser, align 4
  %cmp60.not = icmp eq ptr %46, null
  br i1 %cmp60.not, label %land.lhs.true59.cleanup.sink.split_crit_edge, label %if.then61

land.lhs.true59.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.ser_device, ptr %ser, i32 0, i32 2
  %47 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev64, align 4
  tail call void %46(ptr noundef %48, i32 noundef 1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then61, %land.lhs.true59.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %while.end.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.then61 ], [ 0, %land.lhs.true59.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %while.end.cleanup.sink.split_crit_edge ], [ %tty_wr.0, %if.end18.cleanup.sink.split_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_blob(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__UNIQUE_ID_file339, !1, !"__UNIQUE_ID_file339", i1 false, i1 false}
!1 = !{!"../drivers/net/caif/caif_serial.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_license340, !1, !"__UNIQUE_ID_license340", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author341, !4, !"__UNIQUE_ID_author341", i1 false, i1 false}
!4 = !{!"../drivers/net/caif/caif_serial.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description342, !6, !"__UNIQUE_ID_description342", i1 false, i1 false}
!6 = !{!"../drivers/net/caif/caif_serial.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_file343, !8, !"__UNIQUE_ID_file343", i1 false, i1 false}
!8 = !{!"../drivers/net/caif/caif_serial.c", i32 26, i32 1}
!9 = !{ptr @__UNIQUE_ID_license344, !8, !"__UNIQUE_ID_license344", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias345, !11, !"__UNIQUE_ID_alias345", i1 false, i1 false}
!11 = !{!"../drivers/net/caif/caif_serial.c", i32 27, i32 1}
!12 = !{ptr @__param_ser_loop, !13, !"__param_ser_loop", i1 false, i1 false}
!13 = !{!"../drivers/net/caif/caif_serial.c", i32 43, i32 1}
!14 = !{ptr @__UNIQUE_ID_ser_looptype346, !13, !"__UNIQUE_ID_ser_looptype346", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_ser_loop347, !16, !"__UNIQUE_ID_ser_loop347", i1 false, i1 false}
!16 = !{!"../drivers/net/caif/caif_serial.c", i32 44, i32 1}
!17 = !{ptr @__param_ser_use_stx, !18, !"__param_ser_use_stx", i1 false, i1 false}
!18 = !{!"../drivers/net/caif/caif_serial.c", i32 47, i32 1}
!19 = !{ptr @__UNIQUE_ID_ser_use_stxtype348, !18, !"__UNIQUE_ID_ser_use_stxtype348", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ser_use_stx349, !21, !"__UNIQUE_ID_ser_use_stx349", i1 false, i1 false}
!21 = !{!"../drivers/net/caif/caif_serial.c", i32 48, i32 1}
!22 = !{ptr @__param_ser_use_fcs, !23, !"__param_ser_use_fcs", i1 false, i1 false}
!23 = !{!"../drivers/net/caif/caif_serial.c", i32 52, i32 1}
!24 = !{ptr @__UNIQUE_ID_ser_use_fcstype350, !23, !"__UNIQUE_ID_ser_use_fcstype350", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ser_use_fcs351, !26, !"__UNIQUE_ID_ser_use_fcs351", i1 false, i1 false}
!26 = !{!"../drivers/net/caif/caif_serial.c", i32 53, i32 1}
!27 = !{ptr @__param_ser_write_chunk, !28, !"__param_ser_write_chunk", i1 false, i1 false}
!28 = !{!"../drivers/net/caif/caif_serial.c", i32 56, i32 1}
!29 = !{ptr @__UNIQUE_ID_ser_write_chunktype352, !28, !"__UNIQUE_ID_ser_write_chunktype352", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_ser_write_chunk353, !31, !"__UNIQUE_ID_ser_write_chunk353", i1 false, i1 false}
!31 = !{!"../drivers/net/caif/caif_serial.c", i32 58, i32 1}
!32 = !{ptr @__initcall__kmod_caif_serial__354_452_caif_ser_init6, !33, !"__initcall__kmod_caif_serial__354_452_caif_ser_init6", i1 false, i1 false}
!33 = !{!"../drivers/net/caif/caif_serial.c", i32 452, i32 1}
!34 = !{ptr @__exitcall_caif_ser_exit, !35, !"__exitcall_caif_ser_exit", i1 false, i1 false}
!35 = !{!"../drivers/net/caif/caif_serial.c", i32 453, i32 1}
!36 = !{ptr @ser_loop, !37, !"ser_loop", i1 false, i1 false}
!37 = !{!"../drivers/net/caif/caif_serial.c", i32 42, i32 13}
!38 = !{ptr @debugfsdir, !39, !"debugfsdir", i1 false, i1 false}
!39 = !{!"../drivers/net/caif/caif_serial.c", i32 60, i32 23}
!40 = !{ptr @__param_str_ser_loop, !13, !"__param_str_ser_loop", i1 false, i1 false}
!41 = !{ptr @__param_str_ser_use_stx, !18, !"__param_str_ser_use_stx", i1 false, i1 false}
!42 = !{ptr @ser_use_stx, !43, !"ser_use_stx", i1 false, i1 false}
!43 = !{!"../drivers/net/caif/caif_serial.c", i32 46, i32 13}
!44 = !{ptr @__param_str_ser_use_fcs, !23, !"__param_str_ser_use_fcs", i1 false, i1 false}
!45 = !{ptr @ser_use_fcs, !46, !"ser_use_fcs", i1 false, i1 false}
!46 = !{!"../drivers/net/caif/caif_serial.c", i32 50, i32 13}
!47 = !{ptr @__param_str_ser_write_chunk, !28, !"__param_str_ser_write_chunk", i1 false, i1 false}
!48 = !{ptr @ser_write_chunk, !49, !"ser_write_chunk", i1 false, i1 false}
!49 = !{!"../drivers/net/caif/caif_serial.c", i32 55, i32 12}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/caif/caif_serial.c", i32 38, i32 8}
!52 = !{ptr @ser_lock, !51, !"ser_lock", i1 false, i1 false}
!53 = !{ptr @ser_list, !54, !"ser_list", i1 false, i1 false}
!54 = !{!"../drivers/net/caif/caif_serial.c", i32 39, i32 8}
!55 = !{ptr @ser_release_list, !56, !"ser_release_list", i1 false, i1 false}
!56 = !{!"../drivers/net/caif/caif_serial.c", i32 40, i32 8}
!57 = !{ptr @.str.1, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/caif/caif_serial.c", i32 317, i32 8}
!59 = !{ptr @ser_release_work, !58, !"ser_release_work", i1 false, i1 false}
!60 = !{ptr @.str.2, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/caif/caif_serial.c", i32 384, i32 11}
!62 = !{ptr @caif_ldisc, !63, !"caif_ldisc", i1 false, i1 false}
!63 = !{!"../drivers/net/caif/caif_serial.c", i32 381, i32 29}
!64 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/caif/caif_serial.c", i32 335, i32 40}
!66 = !{ptr @netdev_ops, !67, !"netdev_ops", i1 false, i1 false}
!67 = !{!"../drivers/net/caif/caif_serial.c", i32 391, i32 36}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/caif/caif_serial.c", i32 252, i32 4}
!70 = !{ptr @skb_queue_head_init.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!72 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.6, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/caif/caif_serial.c", i32 98, i32 22}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/caif/caif_serial.c", i32 101, i32 22}
!77 = !{ptr @.str.8, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/caif/caif_serial.c", i32 104, i32 21}
!79 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/caif/caif_serial.c", i32 107, i32 20}
!81 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/caif/caif_serial.c", i32 181, i32 3}
!83 = !{ptr @.str.11, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ldisc_receive._entry, !82, !"_entry", i1 false, i1 false}
!87 = !{ptr @ldisc_receive._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.14, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/caif/caif_serial.c", i32 435, i32 3}
!90 = !{ptr @.str.15, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @caif_ser_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @caif_ser_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/caif/caif_serial.c", i32 437, i32 34}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148486245, i64 2148486277, i64 2148486306, i64 2148486340, i64 2148486371, i64 2148486394}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i8 0, i8 2}
!108 = !{i64 2156206729, i64 2156207224, i64 2156206766, i64 2156206822, i64 2156206856, i64 2156206880, i64 2156206921, i64 2156206942, i64 2156206970, i64 2156207004}
!109 = !{i64 2156209566, i64 2156210061, i64 2156209603, i64 2156209659, i64 2156209693, i64 2156209717, i64 2156209758, i64 2156209779, i64 2156209807, i64 2156209841}
