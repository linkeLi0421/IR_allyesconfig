; ModuleID = '/llk/IR_all_yes/drivers/net/mctp/mctp-serial.c_pt.bc'
source_filename = "../drivers/net/mctp/mctp-serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.127, %struct.anon.128, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.127 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.128 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mctp_serial = type { ptr, ptr, i32, %struct.spinlock, %struct.work_struct, i32, i32, i16, i16, i16, i32, i32, i32, i32, [74 x i8], [74 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.133, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.133 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@mctp_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 28, ptr @mctp_serial_open, ptr @mctp_serial_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mctp_serial_tty_receive_buf, ptr @mctp_serial_tty_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_mctp_serial__483_517_mctp_serial_init6 = internal global ptr @mctp_serial_init, section ".initcall6.init", align 4
@__exitcall_mctp_serial_exit = internal global ptr @mctp_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file484 = internal constant [46 x i8] c"mctp_serial.file=drivers/net/mctp/mctp-serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license485 = internal constant [27 x i8] c"mctp_serial.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author486 = internal constant [57 x i8] c"mctp_serial.author=Jeremy Kerr <jk@codeconstruct.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description487 = internal constant [46 x i8] c"mctp_serial.description=MCTP Serial transport\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mctp\00", [27 x i8] zeroinitializer }, align 32
@mctp_serial_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mctpserial%d\00", [19 x i8] zeroinitializer }, align 32
@mctp_serial_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@mctp_serial_open.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&dev->tx_work)\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mctp_serial_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@mctp_serial_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr @mctp_serial_uninit, ptr null, ptr null, ptr @mctp_serial_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/mctp/mctp-serial.c\00", [33 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mctp_serial_tx_work.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid tx state %d\0A\00", [43 x i8] zeroinitializer }, align 32
@crc_ccitt_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@mctp_serial_push.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid rx state %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"mctp_ldisc\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 497, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 500, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"mctp_serial_ida\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 454, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 468, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 469, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 38, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"mctp_serial_netdev_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 413, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 235, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 211, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [34 x i8] c"../drivers/net/mctp/mctp-serial.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 386, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author486, ptr @__UNIQUE_ID_description487, ptr @__UNIQUE_ID_file484, ptr @__UNIQUE_ID_license485, ptr @__exitcall_mctp_serial_exit, ptr @__initcall__kmod_mctp_serial__483_517_mctp_serial_init6, ptr @mctp_serial_exit, ptr @mctp_ldisc, ptr @.str, ptr @mctp_serial_ida, ptr @.str.1, ptr @mctp_serial_open.__key, ptr @.str.2, ptr @mctp_serial_open.__key.3, ptr @.str.4, ptr @.str.5, ptr @mctp_serial_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_serial_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_serial_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_serial_open.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mctp_serial_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @mctp_ldisc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_serial_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @mctp_ldisc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_serial_open(ptr noundef %tty) #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @mctp_serial_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %call.i)
  %call8 = call ptr @alloc_netdev_mqs(i32 noundef 280, ptr noundef nonnull %name, i8 noundef zeroext 1, ptr noundef nonnull @mctp_serial_setup, i32 noundef 1, i32 noundef 1) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end5.free_ida_crit_edge, label %if.end11

if.end5.free_ida_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ida

if.end11:                                         ; preds = %if.end5
  %add.ptr.i = getelementptr i8, ptr %call8, i32 2304
  %idx13 = getelementptr i8, ptr %call8, i32 2312
  %5 = ptrtoint ptr %idx13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %idx13, align 4
  %tty14 = getelementptr i8, ptr %call8, i32 2308
  %6 = ptrtoint ptr %tty14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tty, ptr %tty14, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %add.ptr.i, align 4
  %txstate = getelementptr i8, ptr %call8, i32 2404
  %8 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %txstate, align 4
  %rxstate = getelementptr i8, ptr %call8, i32 2408
  %9 = ptrtoint ptr %rxstate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rxstate, align 4
  %lock = getelementptr i8, ptr %call8, i32 2316
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mctp_serial_open.__key, i16 noundef signext 3) #7
  %tx_work = getelementptr i8, ptr %call8, i32 2360
  call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #7
  %10 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call8, i32 2376
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mctp_serial_open.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry20 = getelementptr i8, ptr %call8, i32 2364
  %11 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr i8, ptr %call8, i32 2368
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call8, i32 2372
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mctp_serial_tx_work, ptr %func, align 4
  %call24 = call i32 @register_netdev(ptr noundef nonnull %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %free_netdev

if.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %14 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %receive_room, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %15 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %disc_data, align 4
  br label %cleanup

free_netdev:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @free_netdev(ptr noundef nonnull %call8) #7
  br label %free_ida

free_ida:                                         ; preds = %free_netdev, %if.end5.free_ida_crit_edge
  %rc.0 = phi i32 [ %call24, %free_netdev ], [ -12, %if.end5.free_ida_crit_edge ]
  call void @ida_free(ptr noundef nonnull @mctp_serial_ida, i32 noundef %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_ida, %if.end27, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_ida ], [ 0, %if.end27 ], [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call.i, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_close(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %idx1 = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %5) #7
  tail call void @ida_free(ptr noundef nonnull @mctp_serial_ida, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_tty_receive_buf(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %c, ptr nocapture noundef readnone %f, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp5 = icmp sgt i32 %len, 0
  %or.cond = and i1 %tobool.i.not, %cmp5
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rxstate.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 6
  %rxpos.i58.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 13
  %rxfcs.i.i.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 8
  %rxfcs_rcvd.i.i.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 9
  %rxlen.i.i.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 11
  %rxbuf.i.i.i = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %mctp_serial_push.exit.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mctp_serial_push.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %c, i32 %i.06
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxstate.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 2, label %for.body.sw.bb2.i_crit_edge
    i32 4, label %sw.bb5.thread.i
    i32 3, label %sw.bb5.i
    i32 5, label %sw.bb22.i
    i32 7, label %sw.bb23.i
  ]

for.body.sw.bb2.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %rxstate.i, align 4
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %for.body.sw.bb2.i_crit_edge
  %12 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxpos.i58.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %13, label %sw.bb2.i.mctp_serial_push.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb3.i.i
    i32 2, label %sw.bb13.i.i
  ]

sw.bb2.i.mctp_serial_push.exit_crit_edge:         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_serial_push.exit

sw.bb.i.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %7)
  %cmp.i.i = icmp eq i8 %7, 126
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %rxpos.i58.i, align 4
  br label %mctp_serial_push.exit

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

sw.bb3.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp5.i.i = icmp eq i8 %7, 1
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.else10.i.i

if.then7.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %rxpos.i58.i, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([256 x i16], ptr @crc_ccitt_table, i32 0, i32 1) to i32))
  %18 = load i16, ptr getelementptr inbounds ([256 x i16], ptr @crc_ccitt_table, i32 0, i32 1), align 2
  %19 = ptrtoint ptr %rxfcs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %rxfcs.i.i.i, align 2
  br label %mctp_serial_push.exit

if.else10.i.i:                                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

sw.bb13.i.i:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %7)
  %cmp15.i.i = icmp ugt i8 %7, 74
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else19.i.i

if.then17.i.i:                                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

if.else19.i.i:                                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i.i = zext i8 %7 to i32
  %22 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv14.i.i, ptr %rxlen.i.i.i, align 4
  %23 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rxpos.i58.i, align 4
  %24 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %rxstate.i, align 4
  %25 = ptrtoint ptr %rxfcs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rxfcs.i.i.i, align 2
  %27 = lshr i16 %26, 8
  %28 = and i16 %26, 255
  %conv.masked.i.i.i = zext i16 %28 to i32
  %and.i.i.i = xor i32 %conv.masked.i.i.i, %conv14.i.i
  %arrayidx.i44.i.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i.i
  %29 = ptrtoint ptr %arrayidx.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i44.i.i, align 2
  %xor4.i.i.i = xor i16 %30, %27
  store i16 %xor4.i.i.i, ptr %rxfcs.i.i.i, align 2
  br label %mctp_serial_push.exit

sw.bb5.thread.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = or i8 %7, 32
  br label %if.else.i

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %7)
  %cmp9.i = icmp eq i8 %7, 125
  br i1 %cmp9.i, label %if.then.i, label %sw.bb5.i.if.else.i_crit_edge

sw.bb5.i.if.else.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

if.else.i:                                        ; preds = %sw.bb5.i.if.else.i_crit_edge, %sw.bb5.thread.i
  %c.addr.069.i = phi i8 [ %31, %sw.bb5.thread.i ], [ %7, %sw.bb5.i.if.else.i_crit_edge ]
  %33 = ptrtoint ptr %rxfcs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rxfcs.i.i.i, align 2
  %35 = lshr i16 %34, 8
  %conv2.i.i = zext i8 %c.addr.069.i to i32
  %36 = and i16 %34, 255
  %conv.masked.i.i = zext i16 %36 to i32
  %and.i.i = xor i32 %conv.masked.i.i, %conv2.i.i
  %arrayidx.i.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i, align 2
  %xor4.i.i = xor i16 %38, %35
  store i16 %xor4.i.i, ptr %rxfcs.i.i.i, align 2
  %39 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rxpos.i58.i, align 4
  %arrayidx.i = getelementptr %struct.mctp_serial, ptr %1, i32 0, i32 15, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %c.addr.069.i, ptr %arrayidx.i, align 1
  %42 = load i32, ptr %rxpos.i58.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %rxpos.i58.i, align 4
  %43 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %rxstate.i, align 4
  %44 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rxlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %45)
  %cmp16.i = icmp eq i32 %inc.i, %45
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i.mctp_serial_push.exit_crit_edge

if.else.i.mctp_serial_push.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_serial_push.exit

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rxpos.i58.i, align 4
  %47 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

sw.bb22.i:                                        ; preds = %for.body
  %48 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxpos.i58.i, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %49, label %sw.bb22.i.mctp_serial_push.exit_crit_edge [
    i32 0, label %sw.bb.i59.i
    i32 1, label %sw.bb3.i60.i
    i32 2, label %sw.bb10.i.i
  ]

sw.bb22.i.mctp_serial_push.exit_crit_edge:        ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_serial_push.exit

sw.bb.i59.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %7 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %51 = ptrtoint ptr %rxfcs_rcvd.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %shl.i.i, ptr %rxfcs_rcvd.i.i.i, align 4
  %52 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %rxpos.i58.i, align 4
  br label %mctp_serial_push.exit

sw.bb3.i60.i:                                     ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i.i = zext i8 %7 to i16
  %53 = ptrtoint ptr %rxfcs_rcvd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rxfcs_rcvd.i.i.i, align 4
  %or.i.i = or i16 %54, %conv4.i.i
  store i16 %or.i.i, ptr %rxfcs_rcvd.i.i.i, align 4
  %55 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %rxpos.i58.i, align 4
  br label %mctp_serial_push.exit

sw.bb10.i.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 126
  br i1 %cmp.not.i.i, label %if.else.i63.i, label %if.then.i62.i

if.then.i62.i:                                    ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 7, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

if.else.i63.i:                                    ; preds = %sw.bb10.i.i
  %57 = ptrtoint ptr %rxfcs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rxfcs.i.i.i, align 2
  %59 = ptrtoint ptr %rxfcs_rcvd.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %rxfcs_rcvd.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp.not.i.i.i = icmp eq i16 %58, %60
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_dropped.i.i.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 36, i32 6
  %63 = ptrtoint ptr %rx_dropped.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_dropped.i.i.i, align 8
  %inc.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i, ptr %rx_dropped.i.i.i, align 8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %rx_crc_errors.i.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 36, i32 12
  br label %mctp_serial_rx.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i63.i
  %67 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rxlen.i.i.i, align 4
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %62, i32 noundef %68, i32 noundef 2592) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.i, label %if.end12.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %rx_dropped10.i.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 36, i32 6
  br label %mctp_serial_rx.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %71 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 250, ptr %protocol.i.i.i, align 8
  %72 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rxlen.i.i.i, align 4
  %call.i40.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %73) #7
  %74 = call ptr @memcpy(ptr %call.i40.i.i.i, ptr %rxbuf.i.i.i, i32 %73)
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %75 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %77 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 20
  %79 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i.i.i, ptr %network_header.i.i.i.i, align 4
  %cb1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %cb1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1296258128, ptr %cb1.i.i.i.i, align 4
  %halen.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 13
  %81 = ptrtoint ptr %halen.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %halen.i.i.i, align 1
  %call16.i.i.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i.i.i) #7
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %stats18.i.i.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 36
  %84 = ptrtoint ptr %stats18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %stats18.i.i.i, align 8
  %inc19.i.i.i = add i32 %85, 1
  store i32 %inc19.i.i.i, ptr %stats18.i.i.i, align 8
  %86 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rxlen.i.i.i, align 4
  %88 = load ptr, ptr %1, align 4
  %rx_bytes.i.i.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 36, i32 2
  br label %mctp_serial_rx.exit.i.i

mctp_serial_rx.exit.i.i:                          ; preds = %if.end12.i.i.i, %if.then7.i.i.i, %if.then.i.i.i
  %rx_bytes.sink42.i.i.i = phi ptr [ %rx_bytes.i.i.i, %if.end12.i.i.i ], [ %rx_dropped10.i.i.i, %if.then7.i.i.i ], [ %rx_crc_errors.i.i.i, %if.then.i.i.i ]
  %.sink41.i.i.i = phi i32 [ %87, %if.end12.i.i.i ], [ 1, %if.then7.i.i.i ], [ 1, %if.then.i.i.i ]
  %89 = ptrtoint ptr %rx_bytes.sink42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_bytes.sink42.i.i.i, align 8
  %add.i.i.i = add i32 %90, %.sink41.i.i.i
  store i32 %add.i.i.i, ptr %rx_bytes.sink42.i.i.i, align 8
  %91 = ptrtoint ptr %rxlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %rxlen.i.i.i, align 4
  %92 = ptrtoint ptr %rxpos.i58.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %rxpos.i58.i, align 4
  %93 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

sw.bb23.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %7)
  %cmp25.i = icmp eq i8 %7, 126
  br i1 %cmp25.i, label %if.then27.i, label %sw.bb23.i.mctp_serial_push.exit_crit_edge

sw.bb23.i.mctp_serial_push.exit_crit_edge:        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_serial_push.exit

if.then27.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %rxstate.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %rxstate.i, align 4
  br label %mctp_serial_push.exit

do.body.i:                                        ; preds = %for.body
  %.b57.i = load i1, ptr @mctp_serial_push.__print_once, align 1
  br i1 %.b57.i, label %do.body.i.mctp_serial_push.exit_crit_edge, label %if.then30.i

do.body.i.mctp_serial_push.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mctp_serial_push.exit

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mctp_serial_push.__print_once, align 1
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.7, ptr noundef %96, ptr noundef nonnull @.str.9, i32 noundef %9) #10
  br label %mctp_serial_push.exit

mctp_serial_push.exit:                            ; preds = %if.then30.i, %do.body.i.mctp_serial_push.exit_crit_edge, %if.then27.i, %sw.bb23.i.mctp_serial_push.exit_crit_edge, %mctp_serial_rx.exit.i.i, %if.then.i62.i, %sw.bb3.i60.i, %sw.bb.i59.i, %sw.bb22.i.mctp_serial_push.exit_crit_edge, %if.then18.i, %if.else.i.mctp_serial_push.exit_crit_edge, %if.then.i, %if.else19.i.i, %if.then17.i.i, %if.else10.i.i, %if.then7.i.i, %if.else.i.i, %if.then.i.i, %sw.bb2.i.mctp_serial_push.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %mctp_serial_push.exit.cleanup_crit_edge, label %mctp_serial_push.exit.for.body_crit_edge

mctp_serial_push.exit.for.body_crit_edge:         ; preds = %mctp_serial_push.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

mctp_serial_push.exit.cleanup_crit_edge:          ; preds = %mctp_serial_push.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %mctp_serial_push.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_tty_write_wakeup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %tx_work = getelementptr inbounds %struct.mctp_serial, ptr %1, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %tx_work) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mctp_serial_setup(ptr nocapture noundef writeonly %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 290, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 68, ptr %mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 31
  %2 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 68, ptr %max_mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 30
  %3 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 68, ptr %min_mtu, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %flags, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mctp_serial_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 124
  %9 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_tx_work(ptr noundef %work) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !46
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !46
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !46
  %lock = getelementptr i8, ptr %work, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %txstate = getelementptr i8, ptr %work, i32 44
  %5 = ptrtoint ptr %txstate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %txstate, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %6, label %do.body160 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb6_crit_edge
    i32 4, label %sw.bb32
    i32 3, label %sw.bb56
    i32 5, label %entry.sw.bb128_crit_edge
  ]

entry.sw.bb128_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb128

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %txpos = getelementptr i8, ptr %work, i32 68
  %8 = ptrtoint ptr %txpos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %txpos, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %entry.sw.bb6_crit_edge
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 126, ptr %buf, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %1, align 1
  %txlen8 = getelementptr i8, ptr %work, i32 60
  %11 = ptrtoint ptr %txlen8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txlen8, align 4
  %conv9 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9, ptr %3, align 1
  %txpos11 = getelementptr i8, ptr %work, i32 68
  %14 = ptrtoint ptr %txpos11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txpos11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then, label %sw.bb6.if.end_crit_edge

sw.bb6.if.end_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call zeroext i16 @crc_ccitt(i16 noundef zeroext 0, ptr noundef %1, i32 noundef 2) #7
  %txfcs = getelementptr i8, ptr %work, i32 52
  %16 = ptrtoint ptr %txfcs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %call13, ptr %txfcs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb6.if.end_crit_edge
  %17 = ptrtoint ptr %txpos11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txpos11, align 4
  %add.ptr16 = getelementptr i8, ptr %buf, i32 %18
  %sub = sub i32 3, %18
  %tty.i = getelementptr i8, ptr %work, i32 -52
  %19 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %call.i = call i32 %24(ptr noundef %20, ptr noundef %add.ptr16, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %txstate, align 4
  br label %if.else183

if.else:                                          ; preds = %if.end
  %26 = ptrtoint ptr %txpos11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txpos11, align 4
  %add = add i32 %27, %call.i
  store i32 %add, ptr %txpos11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp25 = icmp eq i32 %add, 3
  br i1 %cmp25, label %if.then27, label %if.else.sw.epilogthread-pre-split_crit_edge

if.else.sw.epilogthread-pre-split_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilogthread-pre-split

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %txstate, align 4
  %29 = ptrtoint ptr %txpos11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %txpos11, align 4
  br label %if.else183

sw.bb32:                                          ; preds = %entry
  %txbuf = getelementptr i8, ptr %work, i32 76
  %txpos33 = getelementptr i8, ptr %work, i32 68
  %30 = ptrtoint ptr %txpos33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %txpos33, align 4
  %arrayidx34 = getelementptr [74 x i8], ptr %txbuf, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %34 = and i8 %33, -33
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %buf, align 1
  %tty.i272 = getelementptr i8, ptr %work, i32 -52
  %36 = ptrtoint ptr %tty.i272 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty.i272, align 4
  %ops.i273 = getelementptr inbounds %struct.tty_struct, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops.i273 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i273, align 4
  %write.i274 = getelementptr inbounds %struct.tty_operations, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %write.i274 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i274, align 4
  %call.i275 = call i32 %41(ptr noundef %37, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i275)
  %cmp40 = icmp slt i32 %call.i275, 1
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7, ptr %txstate, align 4
  br label %if.else183

if.else44:                                        ; preds = %sw.bb32
  %43 = ptrtoint ptr %txpos33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %txpos33, align 4
  %add46 = add i32 %44, %call.i275
  store i32 %add46, ptr %txpos33, align 4
  %txlen48 = getelementptr i8, ptr %work, i32 60
  %45 = ptrtoint ptr %txlen48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %txlen48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %46)
  %cmp49 = icmp eq i32 %add46, %46
  br i1 %cmp49, label %if.then51, label %if.else44.sw.epilogthread-pre-split_crit_edge

if.else44.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilogthread-pre-split

if.then51:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %txstate, align 4
  %48 = ptrtoint ptr %txpos33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %txpos33, align 4
  br label %if.else183

sw.bb56:                                          ; preds = %entry
  %txpos.i = getelementptr i8, ptr %work, i32 68
  %49 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %txpos.i, align 4
  %txlen.i = getelementptr i8, ptr %work, i32 60
  %51 = ptrtoint ptr %txlen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.i = icmp eq i32 %50, %52
  br i1 %cmp.i, label %sw.bb56.if.end125_crit_edge, label %if.end.i

sw.bb56.if.end125_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.end.i:                                         ; preds = %sw.bb56
  %arrayidx.i = getelementptr %struct.mctp_serial, ptr %add.ptr, i32 0, i32 14, i32 %50
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %55 = add i8 %54, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %55)
  %56 = icmp ult i8 %55, -2
  %add526.i = add i32 %50, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add526.i, i32 %52)
  %cmp727.i = icmp ult i32 %add526.i, %52
  %or.cond.i = select i1 %56, i1 %cmp727.i, i1 false
  br i1 %or.cond.i, label %for.body.preheader.i, label %if.then59.thread

if.then59.thread:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %txbuf60296 = getelementptr i8, ptr %work, i32 76
  %57 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txpos.i, align 4
  %arrayidx62298 = getelementptr [74 x i8], ptr %txbuf60296, i32 0, i32 %58
  br label %land.lhs.true

for.body.preheader.i:                             ; preds = %if.end.i
  %59 = xor i32 %50, -1
  %60 = add i32 %52, %59
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %add529.i = phi i32 [ %add5.i, %for.inc.i.for.body.i_crit_edge ], [ %add526.i, %for.body.preheader.i ]
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %arrayidx12.i = getelementptr %struct.mctp_serial, ptr %add.ptr, i32 0, i32 14, i32 %add529.i
  %61 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx12.i, align 1
  %63 = add i8 %62, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %64 = icmp ult i8 %63, 2
  br i1 %64, label %for.body.i.next_chunk_len.exit_crit_edge, label %for.inc.i

for.body.i.next_chunk_len.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_chunk_len.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.028.i, 1
  %add5.i = add i32 %add526.i, %i.028.i
  %exitcond.not.i = icmp eq i32 %inc.i, %60
  br i1 %exitcond.not.i, label %for.inc.i.next_chunk_len.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.next_chunk_len.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %next_chunk_len.exit

next_chunk_len.exit:                              ; preds = %for.inc.i.next_chunk_len.exit_crit_edge, %for.body.i.next_chunk_len.exit_crit_edge
  %retval.0.i = phi i32 [ %i.028.i, %for.body.i.next_chunk_len.exit_crit_edge ], [ %60, %for.inc.i.next_chunk_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool58.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool58.not, label %next_chunk_len.exit.if.end125_crit_edge, label %if.then59

next_chunk_len.exit.if.end125_crit_edge:          ; preds = %next_chunk_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then59:                                        ; preds = %next_chunk_len.exit
  %txbuf60 = getelementptr i8, ptr %work, i32 76
  %65 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %txpos.i, align 4
  %arrayidx62 = getelementptr [74 x i8], ptr %txbuf60, i32 0, i32 %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp63 = icmp eq i32 %retval.0.i, 1
  br i1 %cmp63, label %if.then59.land.lhs.true_crit_edge, label %if.then59.if.else91_crit_edge

if.then59.if.else91_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91

if.then59.land.lhs.true_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then59.land.lhs.true_crit_edge, %if.then59.thread
  %.in = phi ptr [ %arrayidx62298, %if.then59.thread ], [ %arrayidx62, %if.then59.land.lhs.true_crit_edge ]
  %67 = phi i32 [ %58, %if.then59.thread ], [ %66, %if.then59.land.lhs.true_crit_edge ]
  %txbuf60303 = phi ptr [ %txbuf60296, %if.then59.thread ], [ %txbuf60, %if.then59.land.lhs.true_crit_edge ]
  %68 = ptrtoint ptr %.in to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %.in, align 1
  %70 = add i8 %69, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %71 = icmp ult i8 %70, 2
  br i1 %71, label %if.then67, label %land.lhs.true.if.else91_crit_edge

land.lhs.true.if.else91_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91

if.then67:                                        ; preds = %land.lhs.true
  %72 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 125, ptr %buf, align 1
  %73 = and i8 %69, -33
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %1, align 1
  %txfcs73 = getelementptr i8, ptr %work, i32 52
  %75 = ptrtoint ptr %txfcs73 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %txfcs73, align 4
  %77 = lshr i16 %76, 8
  %conv2.i = zext i8 %69 to i32
  %78 = and i16 %76, 255
  %conv.masked.i = zext i16 %78 to i32
  %and.i = xor i32 %conv.masked.i, %conv2.i
  %arrayidx.i276 = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i
  %79 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i276, align 2
  %xor4.i = xor i16 %80, %77
  store i16 %xor4.i, ptr %txfcs73, align 4
  %tty.i277 = getelementptr i8, ptr %work, i32 -52
  %81 = ptrtoint ptr %tty.i277 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tty.i277, align 4
  %ops.i278 = getelementptr inbounds %struct.tty_struct, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %ops.i278 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i278, align 4
  %write.i279 = getelementptr inbounds %struct.tty_operations, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %write.i279 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i279, align 4
  %call.i280 = call i32 %86(ptr noundef %82, ptr noundef nonnull %buf, i32 noundef 2) #7
  %87 = zext i32 %call.i280 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call.i280, label %if.else87 [
    i32 2, label %if.then67.if.end112_crit_edge
    i32 1, label %if.then85
  ]

if.then67.if.end112_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then85:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 4, ptr %txstate, align 4
  br label %sw.epilogthread-pre-split

if.else87:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 7, ptr %txstate, align 4
  br label %sw.epilogthread-pre-split

if.else91:                                        ; preds = %land.lhs.true.if.else91_crit_edge, %if.then59.if.else91_crit_edge
  %90 = phi i32 [ %67, %land.lhs.true.if.else91_crit_edge ], [ %66, %if.then59.if.else91_crit_edge ]
  %txbuf60302 = phi ptr [ %txbuf60303, %land.lhs.true.if.else91_crit_edge ], [ %txbuf60, %if.then59.if.else91_crit_edge ]
  %retval.0.i294300 = phi i32 [ 1, %land.lhs.true.if.else91_crit_edge ], [ %retval.0.i, %if.then59.if.else91_crit_edge ]
  %add.ptr95 = getelementptr i8, ptr %txbuf60302, i32 %90
  %tty.i281 = getelementptr i8, ptr %work, i32 -52
  %91 = ptrtoint ptr %tty.i281 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tty.i281, align 4
  %ops.i282 = getelementptr inbounds %struct.tty_struct, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %ops.i282 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i282, align 4
  %write.i283 = getelementptr inbounds %struct.tty_operations, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %write.i283 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write.i283, align 4
  %call.i284 = tail call i32 %96(ptr noundef %92, ptr noundef %add.ptr95, i32 noundef %retval.0.i294300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i284)
  %cmp97 = icmp slt i32 %call.i284, 1
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 7, ptr %txstate, align 4
  br label %sw.epilogthread-pre-split

if.else101:                                       ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %txfcs102 = getelementptr i8, ptr %work, i32 52
  %98 = ptrtoint ptr %txfcs102 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %txfcs102, align 4
  %100 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %txpos.i, align 4
  %add.ptr106 = getelementptr i8, ptr %txbuf60302, i32 %101
  %call107 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %99, ptr noundef %add.ptr106, i32 noundef %call.i284) #7
  %102 = ptrtoint ptr %txfcs102 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %call107, ptr %txfcs102, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.else101, %if.then67.if.end112_crit_edge
  %call.i284.sink = phi i32 [ %call.i284, %if.else101 ], [ 1, %if.then67.if.end112_crit_edge ]
  %103 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %txpos.i, align 4
  %add110 = add i32 %104, %call.i284.sink
  store i32 %add110, ptr %txpos.i, align 4
  %105 = ptrtoint ptr %txstate to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr = load i32, ptr %txstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp114 = icmp eq i32 %.pr, 3
  br i1 %cmp114, label %land.lhs.true116, label %if.end112.sw.epilog_crit_edge

if.end112.sw.epilog_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true116:                                 ; preds = %if.end112
  %106 = ptrtoint ptr %txpos.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %txpos.i, align 4
  %108 = ptrtoint ptr %txlen.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %txlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp119 = icmp eq i32 %107, %109
  br i1 %cmp119, label %if.then121, label %land.lhs.true116.sw.epilogthread-pre-split_crit_edge

land.lhs.true116.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilogthread-pre-split

if.then121:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 5, ptr %txstate, align 4
  %111 = ptrtoint ptr %txpos.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %txpos.i, align 4
  br label %sw.epilogthread-pre-split

if.end125:                                        ; preds = %next_chunk_len.exit.if.end125_crit_edge, %sw.bb56.if.end125_crit_edge
  %112 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 5, ptr %txstate, align 4
  %113 = ptrtoint ptr %txpos.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %txpos.i, align 4
  br label %sw.bb128

sw.bb128:                                         ; preds = %if.end125, %entry.sw.bb128_crit_edge
  %txfcs129 = getelementptr i8, ptr %work, i32 52
  %114 = ptrtoint ptr %txfcs129 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %txfcs129, align 4
  %116 = lshr i16 %115, 8
  %conv131 = trunc i16 %116 to i8
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv131, ptr %buf, align 1
  %conv136 = trunc i16 %115 to i8
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv136, ptr %1, align 1
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 126, ptr %3, align 1
  %txpos140 = getelementptr i8, ptr %work, i32 68
  %120 = ptrtoint ptr %txpos140 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %txpos140, align 4
  %add.ptr141 = getelementptr i8, ptr %buf, i32 %121
  %sub143 = sub i32 3, %121
  %tty.i285 = getelementptr i8, ptr %work, i32 -52
  %122 = ptrtoint ptr %tty.i285 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tty.i285, align 4
  %ops.i286 = getelementptr inbounds %struct.tty_struct, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ops.i286 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i286, align 4
  %write.i287 = getelementptr inbounds %struct.tty_operations, ptr %125, i32 0, i32 7
  %126 = ptrtoint ptr %write.i287 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write.i287, align 4
  %call.i288 = call i32 %127(ptr noundef %123, ptr noundef %add.ptr141, i32 noundef %sub143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i288)
  %cmp145 = icmp slt i32 %call.i288, 1
  br i1 %cmp145, label %if.then147, label %if.else149

if.then147:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 7, ptr %txstate, align 4
  br label %if.else183

if.else149:                                       ; preds = %sw.bb128
  %129 = ptrtoint ptr %txpos140 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %txpos140, align 4
  %add151 = add i32 %130, %call.i288
  store i32 %add151, ptr %txpos140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add151)
  %cmp153 = icmp eq i32 %add151, 3
  br i1 %cmp153, label %sw.epilog.thread312, label %if.else149.sw.epilogthread-pre-split_crit_edge

if.else149.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilogthread-pre-split

sw.epilog.thread312:                              ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 6, ptr %txstate, align 4
  %132 = ptrtoint ptr %txpos140 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %txpos140, align 4
  br label %if.then170

do.body160:                                       ; preds = %entry
  %.b271 = load i1, ptr @mctp_serial_tx_work.__print_once, align 1
  br i1 %.b271, label %do.body160.sw.epilog_crit_edge, label %if.then162

do.body160.sw.epilog_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then162:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mctp_serial_tx_work.__print_once, align 1
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.7, ptr noundef %134, ptr noundef nonnull @.str.8, i32 noundef %6) #10
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %if.then162, %if.else149.sw.epilogthread-pre-split_crit_edge, %if.then121, %land.lhs.true116.sw.epilogthread-pre-split_crit_edge, %if.then99, %if.else87, %if.then85, %if.else44.sw.epilogthread-pre-split_crit_edge, %if.else.sw.epilogthread-pre-split_crit_edge
  %135 = ptrtoint ptr %txstate to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pr310 = load i32, ptr %txstate, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %do.body160.sw.epilog_crit_edge, %if.end112.sw.epilog_crit_edge
  %136 = phi i32 [ %.pr310, %sw.epilogthread-pre-split ], [ %6, %do.body160.sw.epilog_crit_edge ], [ %.pr, %if.end112.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp168 = icmp eq i32 %136, 6
  br i1 %cmp168, label %sw.epilog.if.then170_crit_edge, label %sw.epilog.if.else183_crit_edge

sw.epilog.if.else183_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

sw.epilog.if.then170_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then170

if.then170:                                       ; preds = %sw.epilog.if.then170_crit_edge, %sw.epilog.thread312
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %138, i32 0, i32 36, i32 1
  %139 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_packets, align 4
  %inc172 = add i32 %140, 1
  store i32 %inc172, ptr %tx_packets, align 4
  %txlen173 = getelementptr i8, ptr %work, i32 60
  %141 = ptrtoint ptr %txlen173 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %txlen173, align 4
  %143 = load ptr, ptr %add.ptr, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %143, i32 0, i32 36, i32 3
  %144 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_bytes, align 4
  %add176 = add i32 %145, %142
  store i32 %add176, ptr %tx_bytes, align 4
  store i32 0, ptr %txlen173, align 4
  %txpos178 = getelementptr i8, ptr %work, i32 68
  %146 = ptrtoint ptr %txpos178 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %txpos178, align 4
  %tty = getelementptr i8, ptr %work, i32 -52
  %147 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tty, align 4
  %flags179 = getelementptr inbounds %struct.tty_struct, ptr %148, i32 0, i32 16
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags179) #7
  %149 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %txstate, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %150 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 103
  %152 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %153) #7
  br label %if.end185

if.else183:                                       ; preds = %sw.epilog.if.else183_crit_edge, %if.then147, %if.then51, %if.then42, %if.then27, %if.then21
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then170
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mctp_serial_uninit(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_work = getelementptr i8, ptr %ndev, i32 2360
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mctp_serial_tx(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %txstate = getelementptr i8, ptr %ndev, i32 2404
  %0 = ptrtoint ptr %txstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !47

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 235, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %3)
  %cmp19 = icmp ugt i32 %3, 68
  br i1 %cmp19, label %if.then20, label %do.body23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %out

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr i8, ptr %ndev, i32 2316
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %txbuf = getelementptr i8, ptr %ndev, i32 2436
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call34 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %txbuf, i32 noundef %13) #7
  %txpos = getelementptr i8, ptr %ndev, i32 2428
  %14 = ptrtoint ptr %txpos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %txpos, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %txlen = getelementptr i8, ptr %ndev, i32 2420
  %17 = ptrtoint ptr %txlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %txlen, align 4
  %18 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %txstate, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #7
  %tty = getelementptr i8, ptr %ndev, i32 2308
  %19 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty, align 4
  %flags38 = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags38) #7
  %tx_work = getelementptr i8, ptr %ndev, i32 2360
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %tx_work) #7
  br label %out

out:                                              ; preds = %do.body23, %if.then20
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_mctp_serial__483_517_mctp_serial_init6, !1, !"__initcall__kmod_mctp_serial__483_517_mctp_serial_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mctp/mctp-serial.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_mctp_serial_exit, !3, !"__exitcall_mctp_serial_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/mctp/mctp-serial.c", i32 518, i32 1}
!4 = !{ptr @__UNIQUE_ID_file484, !5, !"__UNIQUE_ID_file484", i1 false, i1 false}
!5 = !{!"../drivers/net/mctp/mctp-serial.c", i32 520, i32 1}
!6 = !{ptr @__UNIQUE_ID_license485, !5, !"__UNIQUE_ID_license485", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author486, !8, !"__UNIQUE_ID_author486", i1 false, i1 false}
!8 = !{!"../drivers/net/mctp/mctp-serial.c", i32 521, i32 1}
!9 = !{ptr @__UNIQUE_ID_description487, !10, !"__UNIQUE_ID_description487", i1 false, i1 false}
!10 = !{!"../drivers/net/mctp/mctp-serial.c", i32 522, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/mctp/mctp-serial.c", i32 500, i32 11}
!13 = !{ptr @mctp_ldisc, !14, !"mctp_ldisc", i1 false, i1 false}
!14 = !{!"../drivers/net/mctp/mctp-serial.c", i32 497, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/mctp/mctp-serial.c", i32 454, i32 31}
!17 = !{ptr @mctp_serial_open.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/mctp/mctp-serial.c", i32 468, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mctp_serial_open.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/mctp/mctp-serial.c", i32 469, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/mctp/mctp-serial.c", i32 38, i32 8}
!25 = !{ptr @mctp_serial_ida, !24, !"mctp_serial_ida", i1 false, i1 false}
!26 = !{ptr @mctp_serial_netdev_ops, !27, !"mctp_serial_netdev_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/mctp/mctp-serial.c", i32 413, i32 36}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/mctp/mctp-serial.c", i32 235, i32 2}
!30 = distinct !{null, !31, !"__print_once", i1 false, i1 false}
!31 = !{!"../drivers/net/mctp/mctp-serial.c", i32 211, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__print_once", i1 false, i1 false}
!35 = !{!"../drivers/net/mctp/mctp-serial.c", i32 386, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 2000, i32 1}
