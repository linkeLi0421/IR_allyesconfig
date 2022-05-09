; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/6pack.c_pt.bc'
source_filename = "../drivers/net/hamradio/6pack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.127, %struct.anon.128, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
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
%struct.anon.127 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.128 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sixpack = type { ptr, ptr, ptr, i32, ptr, ptr, i32, [4 x i8], [400 x i8], i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.refcount_struct, %struct.completion, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.sockaddr_ax25 = type { i16, %struct.ax25_address, i32 }

@sp_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 7, ptr @sixpack_open, ptr @sixpack_close, ptr null, ptr null, ptr null, ptr @sixpack_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @sixpack_receive_buf, ptr @sixpack_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author474 = internal constant [55 x i8] c"6pack.author=Ralf Baechle DO1GRB <ralf@linux-mips.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description475 = internal constant [41 x i8] c"6pack.description=6pack driver for AX.25\00", section ".modinfo", align 1
@__UNIQUE_ID_file476 = internal constant [38 x i8] c"6pack.file=drivers/net/hamradio/6pack\00", section ".modinfo", align 1
@__UNIQUE_ID_license477 = internal constant [18 x i8] c"6pack.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias478 = internal constant [24 x i8] c"6pack.alias=tty-ldisc-7\00", section ".modinfo", align 1
@__initcall__kmod_6pack__479_972_sixpack_init_driver6 = internal global ptr @sixpack_init_driver, section ".initcall6.init", align 4
@__exitcall_sixpack_exit_driver = internal global ptr @sixpack_exit_driver, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6pack\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sp%d\00", [27 x i8] zeroinitializer }, align 32
@sixpack_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&sp->lock\00", [22 x i8] zeroinitializer }, align 32
@sixpack_open.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&sp->tx_t)\00", [20 x i8] zeroinitializer }, align 32
@sixpack_open.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&sp->resync_t)\00", [16 x i8] zeroinitializer }, align 32
@sp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sp_open_dev, ptr @sp_close, ptr @sp_xmit, ptr null, ptr null, ptr null, ptr null, ptr @sp_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@ax25_defaddr = external dso_local constant %struct.ax25_address, align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oversized transmit packet!\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid KISS command\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"KISS control packet too long\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad AX.25 packet to transmit\00", [35 x i8] zeroinitializer }, align 32
@sp_encaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s - dropped.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sp_encaps\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/hamradio/6pack.c\00", [35 x i8] zeroinitializer }, align 32
@sp_encaps._entry_ptr = internal global ptr @sp_encaps._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sp_xmit_on_air.random = internal global { i8, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@resync_tnc.resync_cmd = internal global { i8, [31 x i8] } { i8 -24, [31 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Synchronizing with TNC\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Found TNC\00", [22 x i8] zeroinitializer }, align 32
@__tnc_set_sync_state._entry = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.13, i32 486, ptr null, ptr null }, align 1
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__tnc_set_sync_state\00", [43 x i8] zeroinitializer }, align 32
@__tnc_set_sync_state._entry_ptr = internal global ptr @__tnc_set_sync_state._entry, section ".printk_index", align 4
@disc_data_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disc_data_lock\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@decode_prio_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.13, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0176pack: protocol violation\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"decode_prio_command\00", [44 x i8] zeroinitializer }, align 32
@decode_prio_command._entry_ptr = internal global ptr @decode_prio_command._entry, section ".printk_index", align 4
@decode_std_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.13, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0176pack: bad checksum %2.2x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"decode_std_command\00", [45 x i8] zeroinitializer }, align 32
@decode_std_command._entry_ptr = internal global ptr @decode_std_command._entry, section ".printk_index", align 4
@decode_std_command._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.13, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0176pack: TX underrun\0A\00", [42 x i8] zeroinitializer }, align 32
@decode_std_command._entry_ptr.30 = internal global ptr @decode_std_command._entry.28, section ".printk_index", align 4
@decode_std_command._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.13, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0176pack: RX overrun\0A\00", [43 x i8] zeroinitializer }, align 32
@decode_std_command._entry_ptr.33 = internal global ptr @decode_std_command._entry.31, section ".printk_index", align 4
@decode_std_command._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.13, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0176pack: RX buffer overflow\0A\00", [35 x i8] zeroinitializer }, align 32
@decode_std_command._entry_ptr.36 = internal global ptr @decode_std_command._entry.34, section ".printk_index", align 4
@decode_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.13, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0136pack: cooked buffer overrun, data loss\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_data\00", [20 x i8] zeroinitializer }, align 32
@decode_data._entry_ptr = internal global ptr @decode_data._entry, section ".printk_index", align 4
@sixpack_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.39, ptr @.str.13, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sixpack_init_driver\00", [44 x i8] zeroinitializer }, align 32
@sixpack_init_driver._entry_ptr = internal global ptr @sixpack_init_driver._entry, section ".printk_index", align 4
@msg_banner = internal constant [40 x i8] c"\016AX.25: 6pack driver, Revision: 0.3.0\0A\00", section ".init.rodata", align 1
@sixpack_init_driver._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.39, ptr @.str.13, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sixpack_init_driver._entry_ptr.41 = internal global ptr @sixpack_init_driver._entry.40, section ".printk_index", align 4
@msg_regfail = internal constant [52 x i8] c"\0136pack: can't register line discipline (err = %d)\0A\00", section ".init.rodata", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 35088, i64 35108, i64 35109, i64 35110]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"sp_ldisc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 744, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 747, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 557, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 567, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 611, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 613, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"sp_netdev_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 298, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 170, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 175, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 180, i32 9 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 185, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 236, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 87, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 143, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"resync_cmd\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 500, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 475, i32 9 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 481, i32 9 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 486, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"disc_data_lock\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 369, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 230, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 214, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 174, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 865, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 927, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 935, i32 21 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 937, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 940, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 832, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 766, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private constant [32 x i8] c"../drivers/net/hamradio/6pack.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 771, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias478, ptr @__UNIQUE_ID_author474, ptr @__UNIQUE_ID_description475, ptr @__UNIQUE_ID_file476, ptr @__UNIQUE_ID_license477, ptr @__exitcall_sixpack_exit_driver, ptr @__initcall__kmod_6pack__479_972_sixpack_init_driver6, ptr @__tnc_set_sync_state._entry, ptr @__tnc_set_sync_state._entry_ptr, ptr @decode_data._entry, ptr @decode_data._entry_ptr, ptr @decode_prio_command._entry, ptr @decode_prio_command._entry_ptr, ptr @decode_std_command._entry, ptr @decode_std_command._entry.28, ptr @decode_std_command._entry.31, ptr @decode_std_command._entry.34, ptr @decode_std_command._entry_ptr, ptr @decode_std_command._entry_ptr.30, ptr @decode_std_command._entry_ptr.33, ptr @decode_std_command._entry_ptr.36, ptr @sixpack_exit_driver, ptr @sixpack_init_driver._entry, ptr @sixpack_init_driver._entry.40, ptr @sixpack_init_driver._entry_ptr, ptr @sixpack_init_driver._entry_ptr.41, ptr @sp_encaps._entry, ptr @sp_encaps._entry_ptr, ptr @sp_ldisc, ptr @.str, ptr @.str.1, ptr @sixpack_open.__key, ptr @.str.2, ptr @sixpack_open.__key.3, ptr @.str.4, ptr @sixpack_open.__key.5, ptr @.str.6, ptr @sp_netdev_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @sp_xmit_on_air.random, ptr @resync_tnc.resync_cmd, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @disc_data_lock, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixpack_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixpack_open.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixpack_open.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_encaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_xmit_on_air.random to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resync_tnc.resync_cmd to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_data_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_prio_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_std_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_std_command._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_std_command._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_std_command._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixpack_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sixpack_init_driver._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sixpack_exit_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @sp_ldisc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sixpack_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @msg_banner) #14
  %call1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @sp_ldisc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.end7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @msg_regfail, i32 noundef %call1) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %entry.if.end10_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sixpack_open(ptr noundef %tty) #2 align 64 {
entry:
  %inbyte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @alloc_netdev_mqs(i32 noundef 664, ptr noundef nonnull @.str.1, i8 noundef zeroext 0, ptr noundef nonnull @sp_setup, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %add.ptr.i = getelementptr i8, ptr %call3, i32 2304
  %dev7 = getelementptr i8, ptr %call3, i32 2308
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %dev7, align 4
  %lock = getelementptr i8, ptr %call3, i32 2924
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sixpack_open.__key, i16 noundef signext 3) #11
  %refcnt = getelementptr i8, ptr %call3, i32 2864
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcnt, align 4
  %dead = getelementptr i8, ptr %call3, i32 2868
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dead, align 4
  %wait.i = getelementptr i8, ptr %call3, i32 2872
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #11
  %mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu, align 4
  %mul = shl i32 %8, 1
  %add = add i32 %mul, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %call9.i107 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %cmp12 = icmp eq ptr %call9.i, null
  %cmp13 = icmp eq ptr %call9.i107, null
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end5.out_free_crit_edge, label %if.end15

if.end5.out_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end15:                                         ; preds = %if.end5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tty, ptr %add.ptr.i, align 4
  %rbuff18 = getelementptr i8, ptr %call3, i32 2312
  %10 = ptrtoint ptr %rbuff18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i, ptr %rbuff18, align 4
  %xbuff19 = getelementptr i8, ptr %call3, i32 2320
  %11 = ptrtoint ptr %xbuff19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i107, ptr %xbuff19, align 4
  %mtu20 = getelementptr i8, ptr %call3, i32 2744
  %12 = ptrtoint ptr %mtu20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 329, ptr %mtu20, align 4
  %buffsize = getelementptr i8, ptr %call3, i32 2748
  %13 = ptrtoint ptr %buffsize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %buffsize, align 4
  %rcount = getelementptr i8, ptr %call3, i32 2316
  %14 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rcount, align 4
  %rx_count = getelementptr i8, ptr %call3, i32 2736
  %15 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_count, align 4
  %rx_count_cooked = getelementptr i8, ptr %call3, i32 2740
  %16 = ptrtoint ptr %rx_count_cooked to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_count_cooked, align 4
  %xleft = getelementptr i8, ptr %call3, i32 2328
  %17 = ptrtoint ptr %xleft to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %xleft, align 4
  %flags = getelementptr i8, ptr %call3, i32 2752
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags, align 4
  %duplex = getelementptr i8, ptr %call3, i32 2760
  %19 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %duplex, align 4
  %tx_delay = getelementptr i8, ptr %call3, i32 2757
  %20 = ptrtoint ptr %tx_delay to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 25, ptr %tx_delay, align 1
  %persistence = getelementptr i8, ptr %call3, i32 2758
  %21 = ptrtoint ptr %persistence to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 50, ptr %persistence, align 2
  %slottime = getelementptr i8, ptr %call3, i32 2759
  %22 = ptrtoint ptr %slottime to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %slottime, align 1
  %led_state = getelementptr i8, ptr %call3, i32 2761
  %23 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 96, ptr %led_state, align 1
  %status = getelementptr i8, ptr %call3, i32 2762
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %status, align 2
  %status1 = getelementptr i8, ptr %call3, i32 2763
  %25 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %status1, align 1
  %status2 = getelementptr i8, ptr %call3, i32 2764
  %26 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %status2, align 4
  %tx_enable = getelementptr i8, ptr %call3, i32 2765
  %27 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tx_enable, align 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %tx_t = getelementptr i8, ptr %call3, i32 2768
  tail call void @init_timer_key(ptr noundef %tx_t, ptr noundef nonnull @sp_xmit_on_air, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @sixpack_open.__key.3) #11
  %resync_t = getelementptr i8, ptr %call3, i32 2816
  tail call void @init_timer_key(ptr noundef %resync_t, ptr noundef nonnull @resync_tnc, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @sixpack_open.__key.5) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %30 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %31 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %receive_room, align 4
  %call28 = tail call i32 @register_netdev(ptr noundef nonnull %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end15.out_free_crit_edge

if.end15.out_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end31:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inbyte.i) #11
  %32 = ptrtoint ptr %inbyte.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -24, ptr %inbyte.i, align 1
  %tnc_state.i.i = getelementptr i8, ptr %call3, i32 2766
  %33 = ptrtoint ptr %tnc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tnc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.not.i.i = icmp eq i8 %34, 1
  br i1 %cmp.not.i.i, label %if.end31.tnc_init.exit_crit_edge, label %if.then.i.i

if.end31.tnc_init.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %tnc_init.exit

if.then.i.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %tnc_state.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %tnc_state.i.i, align 2
  %36 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev7, align 4
  %call.i.i.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %37, ptr noundef nonnull @.str.15) #14
  br label %tnc_init.exit

tnc_init.exit:                                    ; preds = %if.then.i.i, %if.end31.tnc_init.exit_crit_edge
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i, align 4
  %call.i = call i32 %43(ptr noundef %39, ptr noundef nonnull %inbyte.i, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 500
  %call2.i = call i32 @mod_timer(ptr noundef %resync_t, i32 noundef %add.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inbyte.i) #11
  br label %cleanup

out_free:                                         ; preds = %if.end15.out_free_crit_edge, %if.end5.out_free_crit_edge
  %err.0 = phi i32 [ %call28, %if.end15.out_free_crit_edge ], [ -105, %if.end5.out_free_crit_edge ]
  tail call void @kfree(ptr noundef %call9.i107) #11
  tail call void @kfree(ptr noundef %call9.i) #11
  tail call void @free_netdev(ptr noundef nonnull %call3) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %tnc_init.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tnc_init.exit ], [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %err.0, %out_free ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sixpack_close(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @disc_data_lock) #11
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  store ptr null, ptr %disc_data, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @disc_data_lock) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !121
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !122

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  br label %if.end3

if.then2:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then2_crit_edge
  %dead = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 28
  tail call void @wait_for_completion(ptr noundef %dead) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %refcount_dec_and_test.exit
  %dev = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %8) #11
  %tx_t = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 25
  %call5 = tail call i32 @del_timer_sync(ptr noundef %tx_t) #11
  %resync_t = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 26
  %call6 = tail call i32 @del_timer_sync(ptr noundef %resync_t) #11
  %rbuff = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rbuff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rbuff, align 4
  tail call void @kfree(ptr noundef %10) #11
  %xbuff = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %xbuff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xbuff, align 4
  tail call void @kfree(ptr noundef %12) #11
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sixpack_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %addr = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #11
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sp_get.exit, label %if.then.i62

if.then.i62:                                      ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i62.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !125

if.then.i62.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i62
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i62.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i62.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

sp_get.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  br label %cleanup31

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  %dev1 = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 35088, label %sw.bb
    i32 35109, label %sw.bb7
    i32 35110, label %sw.bb11
    i32 35108, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  %7 = inttoptr i32 %arg to ptr
  %call4 = tail call i32 @strlen(ptr noundef %5) #16
  %add = add i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sw.bb
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.sw.epilog_crit_edge, label %if.then27.i.i, !prof !122

land.rhs16.i.i.sw.epilog_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %5, i32 noundef %add, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %add, i32 -1226833920) #17, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef %add) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef %5, i32 noundef %add) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool6.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 702) #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !127
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 0, i32 -1226833921) #11, !srcloc !130
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 706) #11
  %14 = inttoptr i32 %arg to ptr
  %15 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i51 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i51 to ptr
  %cpu_domain.i.i52 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i52) #10, !srcloc !127
  %and.i53 = and i32 %17, -13
  %or.i54 = or i32 %and.i53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i54) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %14, i32 -1226833921) #11, !srcloc !131
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool22.not = icmp eq i32 %asmresult, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end24:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult20 = extractvalue { i32, i32 } %18, 1
  %conv = trunc i32 %asmresult20 to i8
  %mode = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %mode, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 56
  %20 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %addr_len, align 1
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %21 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 77, ptr %hard_header_len, align 2
  %type = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 32
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 3, ptr %type, align 16
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %addr) #11
  %23 = inttoptr i32 %arg to ptr
  %24 = call ptr @memset(ptr %addr, i32 255, i32 7)
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #11
  %call.i.i56 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i56, label %sw.bb25.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb25.if.then11.i.i_crit_edge:                  ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb25
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 7, i32 -1226833920) #17, !srcloc !132
  %asmresult.i.i58 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i58)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i58, 0
  br i1 %cmp.i1.i, label %if.end.i.i60, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !122

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i60:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %addr, i32 noundef 7) #11
  %26 = call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !127
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %addr, ptr noundef %23, i32 noundef 7) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #11, !srcloc !128
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end29, label %if.end.i.i60.if.then11.i.i_crit_edge, !prof !122

if.end.i.i60.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i60.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb25.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i60.if.then11.i.i_crit_edge ], [ 7, %sw.bb25.if.then11.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 7, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable() #11
  call void @netif_tx_lock(ptr noundef %5) #11
  call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 7) #11
  call void @netif_tx_unlock(ptr noundef %5) #11
  call fastcc void @local_bh_enable() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then11.i.i
  %err.0 = phi i32 [ 0, %if.end29 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %addr) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup, %if.end24, %sw.bb11.sw.epilog_crit_edge, %sw.bb7, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.sw.epilog_crit_edge
  %err.1 = phi i32 [ %call30, %sw.default ], [ %err.0, %cleanup ], [ 0, %if.end24 ], [ %13, %sw.bb7 ], [ -14, %sw.bb11.sw.epilog_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %call.i.i.i.i.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i66, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i65 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i65, label %if.end5.i.i.i.i.cleanup31_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.cleanup31_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup31

if.then.i66:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %dead.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 28
  call void @complete(ptr noundef %dead.i) #11
  br label %cleanup31

cleanup31:                                        ; preds = %if.then.i66, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup31_crit_edge, %sp_get.exit
  %retval.0 = phi i32 [ -6, %sp_get.exit ], [ %err.1, %if.end5.i.i.i.i.cleanup31_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.then.i66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sixpack_receive_buf(ptr noundef %tty, ptr nocapture noundef readonly %cp, ptr noundef readonly %fp, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #11
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sp_get.exit.thread, label %if.then.i

sp_get.exit.thread:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %refcnt.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !125

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.while.body.lr.ph_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.while.body.lr.ph_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.while.body.lr.ph_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  %flags = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 13
  %dev = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %count.addr.031 = phi i32 [ %count, %while.body.lr.ph ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %fp.addr.030 = phi ptr [ %fp, %while.body.lr.ph ], [ %fp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dec = add i32 %count.addr.031, -1
  %tobool5.not = icmp eq ptr %fp.addr.030, null
  br i1 %tobool5.not, label %while.body.while.cond.backedge_crit_edge, label %land.lhs.true

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %fp.addr.030, i32 1
  %4 = ptrtoint ptr %fp.addr.030 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fp.addr.030, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true.while.cond.backedge_crit_edge, label %if.then7

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.while.cond.backedge_crit_edge

if.then7.while.cond.backedge_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 4
  %8 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then10, %if.then7.while.cond.backedge_crit_edge, %land.lhs.true.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %fp.addr.0.be = phi ptr [ %incdec.ptr, %if.then10 ], [ %incdec.ptr, %if.then7.while.cond.backedge_crit_edge ], [ %incdec.ptr, %land.lhs.true.while.cond.backedge_crit_edge ], [ null, %while.body.while.cond.backedge_crit_edge ]
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp68.i = icmp sgt i32 %count, 0
  br i1 %cmp68.i, label %for.body.lr.ph.i, label %while.end.sixpack_decode.exit_crit_edge

while.end.sixpack_decode.exit_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sixpack_decode.exit

for.body.lr.ph.i:                                 ; preds = %while.end
  %status.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 20
  %status2.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 22
  %duplex.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 18
  %led_state.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 19
  %tx_enable.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 23
  %xbuff.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 4
  %xleft.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 6
  %xhead.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 5
  %rx_count.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 9
  %rx_count_cooked.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 10
  %raw_buf6.i.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 7
  %arrayidx8.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 7, i32 1
  %arrayidx17.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 7, i32 2
  %rcount.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 3
  %dev.i.i46.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 1
  %tnc_state.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 24
  %resync_t.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 26
  %status1.i.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count1.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %cp, i32 %count1.069.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %11)
  %cmp1.i = icmp eq i8 %11, -23
  br i1 %cmp1.i, label %if.then.i23, label %if.end.i

if.then.i23:                                      ; preds = %for.body.i
  %12 = ptrtoint ptr %tnc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tnc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.not.i.i = icmp eq i8 %13, 3
  br i1 %cmp.not.i.i, label %if.then.i23.if.then.i35.thread.i_crit_edge, label %if.then.i.i

if.then.i23.if.then.i35.thread.i_crit_edge:       ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i35.thread.i

if.then.i.i:                                      ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %tnc_state.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %tnc_state.i.i, align 2
  %15 = ptrtoint ptr %dev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i46.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %16, ptr noundef nonnull @.str.17) #14
  br label %if.then.i35.thread.i

if.then.i35.thread.i:                             ; preds = %if.then.i.i, %if.then.i23.if.then.i35.thread.i_crit_edge
  %call.i = tail call i32 @del_timer(ptr noundef %resync_t.i) #11
  br label %if.end20.i.i

if.end.i:                                         ; preds = %for.body.i
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp4.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %conv.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i34.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.not.i34.i, label %if.else25.i.i, label %if.then.i35.i

if.then.i35.i:                                    ; preds = %if.then6.i
  %17 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status.i.i, align 2
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp4.i.i = icmp eq i8 %19, 0
  %and7.i.i = and i32 %conv.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and7.i.i)
  %cmp8.i.i = icmp eq i32 %and7.i.i, 24
  %or.cond.i.i = and i1 %cmp8.i.i, %cmp4.i.i
  br i1 %or.cond.i.i, label %if.then10.i.i, label %if.then.i35.i.if.end20.i.i_crit_edge

if.then.i35.i.if.end20.i.i_crit_edge:             ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

if.then10.i.i:                                    ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp13.not.i.i = icmp eq i8 %18, 1
  br i1 %cmp13.not.i.i, label %if.then10.i.i.if.end.i.i_crit_edge, label %do.end.i.i

if.then10.i.i.if.end.i.i_crit_edge:               ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then10.i.i.if.end.i.i_crit_edge
  %and18.i.i = and i8 %11, -25
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end.i.i, %if.then.i35.i.if.end20.i.i_crit_edge, %if.then.i35.thread.i
  %cmd.addr.0.i.i = phi i8 [ %and18.i.i, %if.end.i.i ], [ %11, %if.then.i35.i.if.end20.i.i_crit_edge ], [ -23, %if.then.i35.thread.i ]
  %20 = and i8 %cmd.addr.0.i.i, 56
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %status.i.i, align 2
  br label %if.end47.i.i

if.else25.i.i:                                    ; preds = %if.then6.i
  %22 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %status2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp27.not.i.i = icmp eq i8 %23, 0
  br i1 %cmp27.not.i.i, label %if.else25.i.i.if.end47.i.i_crit_edge, label %land.lhs.true29.i.i

if.else25.i.i.if.end47.i.i_crit_edge:             ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

land.lhs.true29.i.i:                              ; preds = %if.else25.i.i
  %24 = ptrtoint ptr %duplex.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %duplex.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp31.i.i = icmp eq i8 %25, 1
  br i1 %cmp31.i.i, label %if.then33.i.i, label %land.lhs.true29.i.i.if.end47.i.i_crit_edge

land.lhs.true29.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

if.then33.i.i:                                    ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 112, ptr %led_state.i.i, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %ops.i.i = getelementptr inbounds %struct.tty_struct, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.tty_operations, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i, align 4
  %call36.i.i = tail call i32 %32(ptr noundef %28, ptr noundef %led_state.i.i, i32 noundef 1) #11
  %33 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %tx_enable.i.i, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %ops38.i.i = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ops38.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops38.i.i, align 4
  %write39.i.i = getelementptr inbounds %struct.tty_operations, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %write39.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write39.i.i, align 4
  %40 = ptrtoint ptr %xbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xbuff.i.i, align 4
  %42 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %status2.i.i, align 4
  %conv42.i.i = zext i8 %43 to i32
  %call43.i.i = tail call i32 %39(ptr noundef %35, ptr noundef %41, i32 noundef %conv42.i.i) #11
  %44 = ptrtoint ptr %xleft.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xleft.i.i, align 4
  %sub.i.i = sub i32 %45, %call43.i.i
  store i32 %sub.i.i, ptr %xleft.i.i, align 4
  %46 = ptrtoint ptr %xhead.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xhead.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %call43.i.i
  store ptr %add.ptr.i.i, ptr %xhead.i.i, align 4
  %48 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 96, ptr %led_state.i.i, align 1
  %49 = ptrtoint ptr %status2.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %status2.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then33.i.i, %land.lhs.true29.i.i.if.end47.i.i_crit_edge, %if.else25.i.i.if.end47.i.i_crit_edge, %if.end20.i.i
  %cmd.addr.1.i.i = phi i8 [ %cmd.addr.0.i.i, %if.end20.i.i ], [ %11, %if.then33.i.i ], [ %11, %land.lhs.true29.i.i.if.end47.i.i_crit_edge ], [ %11, %if.else25.i.i.if.end47.i.i_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %ops49.i.i = getelementptr inbounds %struct.tty_struct, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops49.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops49.i.i, align 4
  %write50.i.i = getelementptr inbounds %struct.tty_operations, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %write50.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write50.i.i, align 4
  %call53.i.i = tail call i32 %55(ptr noundef %51, ptr noundef %led_state.i.i, i32 noundef 1) #11
  %56 = ptrtoint ptr %tnc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tnc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %57)
  %cmp55.i.i = icmp eq i8 %57, 3
  br i1 %cmp55.i.i, label %if.then57.i.i, label %if.end47.i.i.decode_prio_command.exit.i_crit_edge

if.end47.i.i.decode_prio_command.exit.i_crit_edge: ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %decode_prio_command.exit.i

if.then57.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %58, 150
  %call58.i.i = tail call i32 @mod_timer(ptr noundef %resync_t.i, i32 noundef %add.i.i) #11
  br label %decode_prio_command.exit.i

decode_prio_command.exit.i:                       ; preds = %if.then57.i.i, %if.end47.i.i.decode_prio_command.exit.i_crit_edge
  %59 = and i8 %cmd.addr.1.i.i, 56
  %60 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %status1.i.i, align 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  %and8.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %cmp9.not.i = icmp eq i32 %and8.i, 0
  br i1 %cmp9.not.i, label %if.else12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  %61 = and i8 %11, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %61)
  %cond.i.i = icmp eq i8 %61, 64
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i.i:                                        ; preds = %if.then11.i
  %62 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %sw.bb.i.i.if.else.i.i_crit_edge

sw.bb.i.i.if.else.i.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %64 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_count_cooked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.i.i = icmp eq i32 %65, 0
  br i1 %cmp2.i.i, label %if.then.i38.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i38.i:                                    ; preds = %land.lhs.true.i.i
  %66 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %status.i.i, align 2
  %68 = and i8 %67, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %68)
  %cmp6.i.i = icmp eq i8 %68, 24
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.then.i38.i.for.inc.i_crit_edge

if.then.i38.i.for.inc.i_crit_edge:                ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then8.i.i:                                     ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 104, ptr %led_state.i.i, align 1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %ops.i40.i = getelementptr inbounds %struct.tty_struct, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i40.i, align 4
  %write.i41.i = getelementptr inbounds %struct.tty_operations, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %write.i41.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write.i41.i, align 4
  %call.i42.i = tail call i32 %75(ptr noundef %71, ptr noundef %led_state.i.i, i32 noundef 1) #11
  br label %for.inc.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %sw.bb.i.i.if.else.i.i_crit_edge
  %76 = ptrtoint ptr %led_state.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 96, ptr %led_state.i.i, align 1
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %ops13.i.i = getelementptr inbounds %struct.tty_struct, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ops13.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops13.i.i, align 4
  %write14.i.i = getelementptr inbounds %struct.tty_operations, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %write14.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write14.i.i, align 4
  %call17.i.i = tail call i32 %82(ptr noundef %78, ptr noundef %led_state.i.i, i32 noundef 1) #11
  %83 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_count.i.i, align 4
  %conv20.i.i = and i32 %84, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i.i)
  %cond114.i.i = icmp eq i32 %conv20.i.i, 0
  br i1 %cond114.i.i, label %if.else.i.i.if.end42.ithread-pre-split.i_crit_edge, label %if.then23.i.i

if.else.i.i.if.end42.ithread-pre-split.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.ithread-pre-split.i

if.then23.i.i:                                    ; preds = %if.else.i.i
  %85 = trunc i32 %84 to i16
  %conv24.i.i = and i16 %85, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv24.i.i)
  %cmp26117.i.i = icmp ult i16 %conv24.i.i, 4
  br i1 %cmp26117.i.i, label %if.then23.i.i.for.body.i.i_crit_edge, label %if.then23.i.i.if.end28.i.i_crit_edge

if.then23.i.i.if.end28.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then23.i.i.for.body.i.i_crit_edge:             ; preds = %if.then23.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %decode_data.exit.i.i.for.body.i.i_crit_edge, %if.then23.i.i.for.body.i.i_crit_edge
  %i.0118.i.i = phi i16 [ %inc.i.i, %decode_data.exit.i.i.for.body.i.i_crit_edge ], [ %conv24.i.i, %if.then23.i.i.for.body.i.i_crit_edge ]
  %86 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp.not.i.i.i = icmp eq i32 %87, 3
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i = add i32 %87, 1
  %88 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc.i.i.i, ptr %rx_count.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 7, i32 %87
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  br label %decode_data.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %90 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_count_cooked.i.i, align 4
  %92 = add i32 %91, -398
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400, i32 %92)
  %cmp2.i.i.i = icmp ult i32 %92, -400
  br i1 %cmp2.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  %93 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %rx_count.i.i, align 4
  br label %decode_data.exit.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %raw_buf6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %raw_buf6.i.i.i, align 1
  %96 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx8.i.i.i, align 1
  %shl.i.i.i = shl i8 %97, 2
  %and.i.i.i = and i8 %shl.i.i.i, -64
  %or.i.i.i = or i8 %and.i.i.i, %95
  %inc12.i.i.i = add nsw i32 %91, 1
  %98 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %inc12.i.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx13.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %91
  %99 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %or.i.i.i, ptr %arrayidx13.i.i.i, align 1
  %100 = load i8, ptr %arrayidx8.i.i.i, align 1
  %101 = and i8 %100, 15
  %102 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx17.i.i.i, align 1
  %shl19.i.i.i = shl i8 %103, 2
  %and20.i.i.i = and i8 %shl19.i.i.i, -16
  %or21.i.i.i = or i8 %and20.i.i.i, %101
  %104 = load i32, ptr %rx_count_cooked.i.i, align 4
  %inc25.i.i.i = add i32 %104, 1
  store i32 %inc25.i.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx26.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %104
  %105 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %or21.i.i.i, ptr %arrayidx26.i.i.i, align 1
  %106 = load i8, ptr %arrayidx17.i.i.i, align 1
  %107 = and i8 %106, 3
  %108 = load i32, ptr %rx_count_cooked.i.i, align 4
  %inc36.i.i.i = add i32 %108, 1
  store i32 %inc36.i.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx37.i.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %108
  %109 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %107, ptr %arrayidx37.i.i.i, align 1
  %110 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %rx_count.i.i, align 4
  br label %decode_data.exit.i.i

decode_data.exit.i.i:                             ; preds = %if.end5.i.i.i, %do.end.i.i.i, %if.then.i.i.i
  %inc.i.i = add nuw nsw i16 %i.0118.i.i, 1
  %cmp26.i.i = icmp ult i16 %i.0118.i.i, 3
  br i1 %cmp26.i.i, label %decode_data.exit.i.i.for.body.i.i_crit_edge, label %decode_data.exit.i.i.if.end28.i.i_crit_edge

decode_data.exit.i.i.if.end28.i.i_crit_edge:      ; preds = %decode_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

decode_data.exit.i.i.for.body.i.i_crit_edge:      ; preds = %decode_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end28.i.i:                                     ; preds = %decode_data.exit.i.i.if.end28.i.i_crit_edge, %if.then23.i.i.if.end28.i.i_crit_edge
  %trunc.i.i = trunc i32 %84 to i8
  %111 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %trunc.i.i, label %if.end28.i.i.if.end42.ithread-pre-split.i_crit_edge [
    i8 2, label %if.end28.i.i.if.end42.sink.split.i.i_crit_edge
    i8 3, label %if.then38.i.i
  ]

if.end28.i.i.if.end42.sink.split.i.i_crit_edge:   ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end28.i.i.if.end42.ithread-pre-split.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.ithread-pre-split.i

if.then38.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.sink.split.i.i

if.end42.sink.split.i.i:                          ; preds = %if.then38.i.i, %if.end28.i.i.if.end42.sink.split.i.i_crit_edge
  %.sink127.i.i = phi i32 [ -1, %if.then38.i.i ], [ -2, %if.end28.i.i.if.end42.sink.split.i.i_crit_edge ]
  %112 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_count_cooked.i.i, align 4
  %sub40.i.i = add i32 %113, %.sink127.i.i
  store i32 %sub40.i.i, ptr %rx_count_cooked.i.i, align 4
  br label %if.end42.i.i

if.end42.ithread-pre-split.i:                     ; preds = %if.end28.i.i.if.end42.ithread-pre-split.i_crit_edge, %if.else.i.i.if.end42.ithread-pre-split.i_crit_edge
  %114 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr.i = load i32, ptr %rx_count_cooked.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end42.ithread-pre-split.i, %if.end42.sink.split.i.i
  %115 = phi i32 [ %.pr.i, %if.end42.ithread-pre-split.i ], [ %sub40.i.i, %if.end42.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp46119.not.i.i = icmp eq i32 %115, 0
  br i1 %cmp46119.not.i.i, label %if.end42.i.i.do.end.i45.i_crit_edge, label %if.end42.i.i.for.body48.i.i_crit_edge

if.end42.i.i.for.body48.i.i_crit_edge:            ; preds = %if.end42.i.i
  br label %for.body48.i.i

if.end42.i.i.do.end.i45.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i45.i

for.body48.i.i:                                   ; preds = %for.body48.i.i.for.body48.i.i_crit_edge, %if.end42.i.i.for.body48.i.i_crit_edge
  %conv44122.i.i = phi i32 [ %conv44.i.i, %for.body48.i.i.for.body48.i.i_crit_edge ], [ 0, %if.end42.i.i.for.body48.i.i_crit_edge ]
  %checksum.0121.i.i = phi i32 [ %phi.cast.i.i, %for.body48.i.i.for.body48.i.i_crit_edge ], [ 0, %if.end42.i.i.for.body48.i.i_crit_edge ]
  %i.1120.i.i = phi i16 [ %inc53.i.i, %for.body48.i.i.for.body48.i.i_crit_edge ], [ 0, %if.end42.i.i.for.body48.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %conv44122.i.i
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.i, align 1
  %conv49.i.i = zext i8 %117 to i32
  %add.i44.i = add nuw nsw i32 %checksum.0121.i.i, %conv49.i.i
  %inc53.i.i = add i16 %i.1120.i.i, 1
  %phi.cast.i.i = and i32 %add.i44.i, 255
  %conv44.i.i = sext i16 %inc53.i.i to i32
  %cmp46.i.i = icmp ugt i32 %115, %conv44.i.i
  br i1 %cmp46.i.i, label %for.body48.i.i.for.body48.i.i_crit_edge, label %for.end54.i.i

for.body48.i.i.for.body48.i.i_crit_edge:          ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body48.i.i

for.end54.i.i:                                    ; preds = %for.body48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phi.cast.i.i)
  %cmp56.not.i.i = icmp eq i32 %phi.cast.i.i, 255
  br i1 %cmp56.not.i.i, label %if.else61.i.i, label %for.end54.i.i.do.end.i45.i_crit_edge

for.end54.i.i.do.end.i45.i_crit_edge:             ; preds = %for.end54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i45.i

do.end.i45.i:                                     ; preds = %for.end54.i.i.do.end.i45.i_crit_edge, %if.end42.i.i.do.end.i45.i_crit_edge
  %checksum.0.lcssa126.i.i = phi i32 [ %phi.cast.i.i, %for.end54.i.i.do.end.i45.i_crit_edge ], [ 0, %if.end42.i.i.do.end.i45.i_crit_edge ]
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %checksum.0.lcssa126.i.i) #14
  br label %if.end64.i.i

if.else61.i.i:                                    ; preds = %for.end54.i.i
  %sub63.i.i = add i32 %115, -2
  %118 = ptrtoint ptr %rcount.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub63.i.i, ptr %rcount.i.i, align 4
  %add.i.i.i = add i32 %115, -1
  %119 = ptrtoint ptr %dev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i.i46.i, align 4
  %rx_bytes.i.i.i = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 36, i32 2
  %121 = ptrtoint ptr %rx_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rx_bytes.i.i.i, align 8
  %add1.i.i.i = add i32 %122, %add.i.i.i
  store i32 %add1.i.i.i, ptr %rx_bytes.i.i.i, align 8
  %call.i.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %115, i32 noundef 2592) #11
  %cmp.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %cmp.i.i.i, label %out_mem.i.i.i, label %if.end.i115.i.i

if.end.i115.i.i:                                  ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i.i, i32 noundef %115) #11
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call4.i.i.i, i32 1
  %123 = ptrtoint ptr %call4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %call4.i.i.i, align 1
  %124 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %add.ptr.i.i.i, i32 %add.i.i.i)
  %125 = ptrtoint ptr %dev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i.i46.i, align 4
  %127 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %126, ptr %127, align 8
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %129 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data.i.i.i.i.i, align 4
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 18
  %131 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %head.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %132 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %conv.i.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i.i to i16
  %mac_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15, i32 0, i32 21
  %133 = ptrtoint ptr %mac_header.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv.i.i.i.i.i, ptr %mac_header.i.i.i.i.i, align 2
  %pkt_type.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15
  %134 = ptrtoint ptr %pkt_type.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load.i.i.i.i = load i16, ptr %pkt_type.i.i.i.i, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, 8191
  store i16 %bf.clear.i.i.i.i, ptr %pkt_type.i.i.i.i, align 8
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %135 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 2, ptr %protocol.i.i.i, align 8
  %call7.i.i.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i.i.i) #11
  %136 = ptrtoint ptr %dev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i.i46.i, align 4
  %stats9.i.i.i = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 36
  br label %sp_bump.exit.i.i

out_mem.i.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %dev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i.i46.i, align 4
  %rx_dropped.i.i.i = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 36, i32 6
  br label %sp_bump.exit.i.i

sp_bump.exit.i.i:                                 ; preds = %out_mem.i.i.i, %if.end.i115.i.i
  %rx_dropped.sink1.i.i.i = phi ptr [ %rx_dropped.i.i.i, %out_mem.i.i.i ], [ %stats9.i.i.i, %if.end.i115.i.i ]
  %140 = ptrtoint ptr %rx_dropped.sink1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_dropped.sink1.i.i.i, align 8
  %inc12.i116.i.i = add i32 %141, 1
  store i32 %inc12.i116.i.i, ptr %rx_dropped.sink1.i.i.i, align 8
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %sp_bump.exit.i.i, %do.end.i45.i
  %142 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %rx_count_cooked.i.i, align 4
  br label %for.inc.i

if.else12.i:                                      ; preds = %if.else.i
  %143 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %status.i.i, align 2
  %145 = and i8 %144, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %145)
  %cmp15.i = icmp eq i8 %145, 24
  br i1 %cmp15.i, label %if.then17.i, label %if.else12.i.for.inc.i_crit_edge

if.else12.i.for.inc.i_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.else12.i
  %146 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %147)
  %cmp.not.i48.i = icmp eq i32 %147, 3
  br i1 %cmp.not.i48.i, label %if.end.i54.i, label %if.then.i51.i

if.then.i51.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i49.i = add i32 %147, 1
  %148 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %inc.i49.i, ptr %rx_count.i.i, align 4
  %arrayidx.i50.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 7, i32 %147
  %149 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %11, ptr %arrayidx.i50.i, align 1
  br label %for.inc.i

if.end.i54.i:                                     ; preds = %if.then17.i
  %150 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_count_cooked.i.i, align 4
  %152 = add i32 %151, -398
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400, i32 %152)
  %cmp2.i53.i = icmp ult i32 %152, -400
  br i1 %cmp2.i53.i, label %do.end.i56.i, label %if.end5.i.i

do.end.i56.i:                                     ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #14
  %153 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %rx_count.i.i, align 4
  br label %for.inc.i

if.end5.i.i:                                      ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %raw_buf6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %raw_buf6.i.i.i, align 1
  %156 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx8.i.i.i, align 1
  %shl.i.i = shl i8 %157, 2
  %and.i57.i = and i8 %shl.i.i, -64
  %or.i.i = or i8 %and.i57.i, %155
  %inc12.i.i = add nsw i32 %151, 1
  %158 = ptrtoint ptr %rx_count_cooked.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %inc12.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %151
  %159 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %or.i.i, ptr %arrayidx13.i.i, align 1
  %160 = load i8, ptr %arrayidx8.i.i.i, align 1
  %161 = and i8 %160, 15
  %162 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx17.i.i.i, align 1
  %shl19.i.i = shl i8 %163, 2
  %and20.i.i = and i8 %shl19.i.i, -16
  %or21.i.i = or i8 %and20.i.i, %161
  %164 = load i32, ptr %rx_count_cooked.i.i, align 4
  %inc25.i.i = add i32 %164, 1
  store i32 %inc25.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx26.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %164
  %165 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %or21.i.i, ptr %arrayidx26.i.i, align 1
  %166 = load i8, ptr %arrayidx17.i.i.i, align 1
  %167 = and i8 %166, 3
  %shl31.i.i = shl i8 %11, 2
  %or32.i.i = or i8 %167, %shl31.i.i
  %168 = load i32, ptr %rx_count_cooked.i.i, align 4
  %inc36.i.i = add i32 %168, 1
  store i32 %inc36.i.i, ptr %rx_count_cooked.i.i, align 4
  %arrayidx37.i.i = getelementptr %struct.sixpack, ptr %1, i32 0, i32 8, i32 %168
  %169 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %or32.i.i, ptr %arrayidx37.i.i, align 1
  %170 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %rx_count.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.i, %do.end.i56.i, %if.then.i51.i, %if.else12.i.for.inc.i_crit_edge, %if.end64.i.i, %if.then8.i.i, %if.then.i38.i.for.inc.i_crit_edge, %if.then11.i.for.inc.i_crit_edge, %decode_prio_command.exit.i
  %inc.i = add nuw nsw i32 %count1.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.sixpack_decode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.sixpack_decode.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sixpack_decode.exit

sixpack_decode.exit:                              ; preds = %for.inc.i.sixpack_decode.exit_crit_edge, %while.end.sixpack_decode.exit_crit_edge
  %call.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %171 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i27, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sixpack_decode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i26, label %if.end5.i.i.i.i.sp_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.sp_put.exit_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sp_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %sp_put.exit

if.then.i27:                                      ; preds = %sixpack_decode.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %dead.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 28
  tail call void @complete(ptr noundef %dead.i) #11
  br label %sp_put.exit

sp_put.exit:                                      ; preds = %if.then.i27, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sp_put.exit_crit_edge
  tail call void @tty_unthrottle(ptr noundef %tty) #11
  br label %cleanup

cleanup:                                          ; preds = %sp_put.exit, %sp_get.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sixpack_write_wakeup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #11
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sp_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !125

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

sp_get.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #11
  %xleft = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_packets, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #11
  %tx_enable = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tx_enable, align 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 103
  %13 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %14) #11
  br label %out

if.end3:                                          ; preds = %if.end
  %tx_enable4 = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %tx_enable4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_enable4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.then6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  %xhead = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xhead, align 4
  %call8 = tail call i32 %20(ptr noundef %tty, ptr noundef %22, i32 noundef %5) #11
  %23 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xleft, align 4
  %sub = sub i32 %24, %call8
  store i32 %sub, ptr %xleft, align 4
  %25 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xhead, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %call8
  store ptr %add.ptr, ptr %xhead, align 4
  br label %out

out:                                              ; preds = %if.then6, %if.end3.out_crit_edge, %if.then1
  %call.i.i.i.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i30, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i29 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i29, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i30:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %dead.i = getelementptr inbounds %struct.sixpack, ptr %1, i32 0, i32 28
  tail call void @complete(ptr noundef %dead.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i30, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sp_get.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sp_netdev_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 256, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 73, ptr %hard_header_len, align 2
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ax25_header_ops, ptr %header_ops, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %addr_len, align 1
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10, ptr %tx_queue_len, align 16
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %7 = call ptr @memcpy(ptr %broadcast, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ax25_defaddr, i32 noundef 7) #11
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sp_xmit_on_air(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -464
  %slottime = getelementptr i8, ptr %t, i32 -9
  %0 = ptrtoint ptr %slottime to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %slottime, align 1
  %conv = zext i8 %1 to i16
  %2 = load i8, ptr @sp_xmit_on_air.random, align 1
  %mul = mul i8 %2, 17
  %add = add i8 %mul, 41
  store i8 %add, ptr @sp_xmit_on_air.random, align 1
  %status1 = getelementptr i8, ptr %t, i32 -5
  %3 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status1, align 1
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %persistence = getelementptr i8, ptr %t, i32 -10
  %6 = ptrtoint ptr %persistence to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %persistence, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %add, i8 %7)
  %cmp7 = icmp ult i8 %add, %7
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %led_state = getelementptr i8, ptr %t, i32 -7
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 112, ptr %led_state, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %call = tail call i32 %14(ptr noundef %10, ptr noundef %led_state, i32 noundef 1) #11
  %tx_enable = getelementptr i8, ptr %t, i32 -3
  %15 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tx_enable, align 1
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %ops12 = getelementptr inbounds %struct.tty_struct, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops12, align 4
  %write13 = getelementptr inbounds %struct.tty_operations, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %write13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write13, align 4
  %xbuff = getelementptr i8, ptr %t, i32 -448
  %22 = ptrtoint ptr %xbuff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xbuff, align 4
  %status2 = getelementptr i8, ptr %t, i32 -4
  %24 = ptrtoint ptr %status2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %status2, align 4
  %conv15 = zext i8 %25 to i32
  %call16 = tail call i32 %21(ptr noundef %17, ptr noundef %23, i32 noundef %conv15) #11
  %xleft = getelementptr i8, ptr %t, i32 -440
  %26 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xleft, align 4
  %sub = sub i32 %27, %call16
  store i32 %sub, ptr %xleft, align 4
  %xhead = getelementptr i8, ptr %t, i32 -444
  %28 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xhead, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 %call16
  store ptr %add.ptr17, ptr %xhead, align 4
  %30 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 96, ptr %led_state, align 1
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %ops20 = getelementptr inbounds %struct.tty_struct, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops20, align 4
  %write21 = getelementptr inbounds %struct.tty_operations, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %write21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write21, align 4
  %call24 = tail call i32 %36(ptr noundef %32, ptr noundef %led_state, i32 noundef 1) #11
  %37 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %status2, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = mul nuw nsw i16 %conv, 100
  %mul27 = add nuw nsw i16 %39, 100
  %div50 = udiv i16 %mul27, 100
  %div.zext = zext i16 %div50 to i32
  %add28 = add i32 %38, %div.zext
  %call29 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add28) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resync_tnc(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -512
  %rx_count = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_count, align 4
  %rx_count_cooked = getelementptr i8, ptr %t, i32 -76
  %1 = ptrtoint ptr %rx_count_cooked to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_count_cooked, align 4
  %status = getelementptr i8, ptr %t, i32 -54
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %status, align 2
  %status1 = getelementptr i8, ptr %t, i32 -53
  %3 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %status1, align 1
  %status2 = getelementptr i8, ptr %t, i32 -52
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %status2, align 4
  %led_state = getelementptr i8, ptr %t, i32 -55
  %5 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 96, ptr %led_state, align 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %call = tail call i32 %11(ptr noundef %7, ptr noundef %led_state, i32 noundef 1) #11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %ops4 = getelementptr inbounds %struct.tty_struct, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops4, align 4
  %write5 = getelementptr inbounds %struct.tty_operations, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %write5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write5, align 4
  %call7 = tail call i32 %17(ptr noundef %13, ptr noundef nonnull @resync_tnc.resync_cmd, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 500
  %call8 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sp_open_dev(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %cmp = icmp eq ptr %1, null
  %. = select i1 %cmp, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2924
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %buf.i.i = alloca [400 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 2924
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %tx_bytes, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = load i32, ptr %len, align 4
  %mtu.i = getelementptr i8, ptr %dev, i32 2744
  %11 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i = icmp slt i32 %12, %10
  br i1 %cmp.i, label %if.end.out_drop.i_crit_edge, label %if.end.i

if.end.out_drop.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop.i

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp1.i = icmp ugt i8 %14, 5
  br i1 %cmp1.i, label %if.end.i.out_drop.i_crit_edge, label %if.end4.i

if.end.i.out_drop.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp7.not.i = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp9.i = icmp sgt i32 %10, 2
  %or.cond.i = and i1 %cmp9.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end4.i.out_drop.i_crit_edge, label %if.end12.i

if.end4.i.out_drop.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop.i

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp18.i = icmp slt i32 %10, 15
  %or.cond123.i = and i1 %cmp18.i, %cmp15.i
  br i1 %or.cond123.i, label %if.end12.i.out_drop.i_crit_edge, label %if.end21.i

if.end12.i.out_drop.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop.i

if.end21.i:                                       ; preds = %if.end12.i
  %xbuff.i = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xbuff.i, align 4
  %tx_delay.i = getelementptr i8, ptr %dev, i32 2757
  %17 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_delay.i, align 1
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %buf.i.i) #11
  %19 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %20 = call ptr @memset(ptr %19, i32 255, i32 399)
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -96, ptr %16, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %16, i32 1
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %arrayidx2.i.i, align 1
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %18, ptr %buf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp120.i.i = icmp sgt i32 %10, 1
  br i1 %cmp120.i.i, label %for.cond7.preheader.thread.i.i, label %for.cond7.preheader.i.i

for.cond7.preheader.thread.i.i:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %uglygep130.i.i = getelementptr i8, ptr %9, i32 1
  %24 = add nsw i32 %10, -1
  %25 = call ptr @memcpy(ptr %19, ptr %uglygep130.i.i, i32 %24)
  br label %for.body9.i.i.preheader

for.cond7.preheader.i.i:                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp8122.i.i = icmp eq i32 %10, 1
  br i1 %cmp8122.i.i, label %for.cond7.preheader.i.i.for.body9.i.i.preheader_crit_edge, label %for.cond7.preheader.i.i.for.end15.i.i_crit_edge

for.cond7.preheader.i.i.for.end15.i.i_crit_edge:  ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15.i.i

for.cond7.preheader.i.i.for.body9.i.i.preheader_crit_edge: ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i.i.preheader

for.body9.i.i.preheader:                          ; preds = %for.cond7.preheader.i.i.for.body9.i.i.preheader_crit_edge, %for.cond7.preheader.thread.i.i
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %for.body9.i.i.preheader
  %checksum.0124.i.i = phi i32 [ %phi.cast.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ 0, %for.body9.i.i.preheader ]
  %count.1123.i.i = phi i32 [ %inc14.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ 0, %for.body9.i.i.preheader ]
  %arrayidx10.i.i = getelementptr [400 x i8], ptr %buf.i.i, i32 0, i32 %count.1123.i.i
  %26 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  %add.i.i = add nuw nsw i32 %checksum.0124.i.i, %conv.i.i
  %inc14.i.i = add nuw nsw i32 %count.1123.i.i, 1
  %phi.cast.i.i = and i32 %add.i.i, 255
  %exitcond.not.i.i = icmp eq i32 %inc14.i.i, %10
  br i1 %exitcond.not.i.i, label %for.end15.loopexit.i.i, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i.i

for.end15.loopexit.i.i:                           ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast131.i.i = trunc i32 %add.i.i to i8
  %phi.bo.i.i = xor i8 %phi.cast131.i.i, -1
  br label %for.end15.i.i

for.end15.i.i:                                    ; preds = %for.end15.loopexit.i.i, %for.cond7.preheader.i.i.for.end15.i.i_crit_edge
  %checksum.0.lcssa.i.i = phi i8 [ -1, %for.cond7.preheader.i.i.for.end15.i.i_crit_edge ], [ %phi.bo.i.i, %for.end15.loopexit.i.i ]
  %arrayidx18.i.i = getelementptr [400 x i8], ptr %buf.i.i, i32 0, i32 %10
  %28 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %checksum.0.lcssa.i.i, ptr %arrayidx18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20.not125.i.i = icmp slt i32 %10, 0
  br i1 %cmp20.not125.i.i, label %for.end15.i.i.encode_sixpack.exit.i_crit_edge, label %for.end15.i.i.for.body22.i.i_crit_edge

for.end15.i.i.for.body22.i.i_crit_edge:           ; preds = %for.end15.i.i
  br label %for.body22.i.i

for.end15.i.i.encode_sixpack.exit.i_crit_edge:    ; preds = %for.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_sixpack.exit.i

for.body22.i.i:                                   ; preds = %for.inc68.i.i.for.body22.i.i_crit_edge, %for.end15.i.i.for.body22.i.i_crit_edge
  %raw_count.0128.i.i = phi i32 [ %raw_count.1.i.i, %for.inc68.i.i.for.body22.i.i_crit_edge ], [ 2, %for.end15.i.i.for.body22.i.i_crit_edge ]
  %count.2126.i.i = phi i32 [ %inc69.i.i, %for.inc68.i.i.for.body22.i.i_crit_edge ], [ 0, %for.end15.i.i.for.body22.i.i_crit_edge ]
  %rem.i.i = srem i32 %count.2126.i.i, 3
  %29 = zext i32 %rem.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %rem.i.i, label %if.else52.i.i [
    i32 0, label %if.then.i.i
    i32 1, label %if.then38.i.i
  ]

if.then.i.i:                                      ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.i.i = getelementptr [400 x i8], ptr %buf.i.i, i32 0, i32 %count.2126.i.i
  %30 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx25.i.i, align 1
  %32 = and i8 %31, 63
  %inc28.i.i = add i32 %raw_count.0128.i.i, 1
  %arrayidx29.i.i = getelementptr i8, ptr %16, i32 %raw_count.0128.i.i
  %33 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx29.i.i, align 1
  %34 = lshr i8 %31, 2
  %35 = and i8 %34, 48
  br label %for.inc68.i.i

if.then38.i.i:                                    ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx39.i.i = getelementptr [400 x i8], ptr %buf.i.i, i32 0, i32 %count.2126.i.i
  %36 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx39.i.i, align 1
  %38 = and i8 %37, 15
  %inc42.i.i = add i32 %raw_count.0128.i.i, 1
  %arrayidx43.i.i = getelementptr i8, ptr %16, i32 %raw_count.0128.i.i
  %39 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx43.i.i, align 1
  %or119.i.i = or i8 %40, %38
  store i8 %or119.i.i, ptr %arrayidx43.i.i, align 1
  %41 = lshr i8 %37, 2
  %42 = and i8 %41, 60
  br label %for.inc68.i.i

if.else52.i.i:                                    ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx53.i.i = getelementptr [400 x i8], ptr %buf.i.i, i32 0, i32 %count.2126.i.i
  %43 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx53.i.i, align 1
  %45 = and i8 %44, 3
  %inc56.i.i = add i32 %raw_count.0128.i.i, 1
  %arrayidx57.i.i = getelementptr i8, ptr %16, i32 %raw_count.0128.i.i
  %46 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx57.i.i, align 1
  %or59118.i.i = or i8 %47, %45
  store i8 %or59118.i.i, ptr %arrayidx57.i.i, align 1
  %48 = lshr i8 %44, 2
  %inc65.i.i = add i32 %raw_count.0128.i.i, 2
  br label %for.inc68.i.i

for.inc68.i.i:                                    ; preds = %if.else52.i.i, %if.then38.i.i, %if.then.i.i
  %inc28.sink.i.i = phi i32 [ %inc28.i.i, %if.then.i.i ], [ %inc56.i.i, %if.else52.i.i ], [ %inc42.i.i, %if.then38.i.i ]
  %.sink.i.i = phi i8 [ %35, %if.then.i.i ], [ %48, %if.else52.i.i ], [ %42, %if.then38.i.i ]
  %raw_count.1.i.i = phi i32 [ %inc28.i.i, %if.then.i.i ], [ %inc65.i.i, %if.else52.i.i ], [ %inc42.i.i, %if.then38.i.i ]
  %arrayidx34.i.i = getelementptr i8, ptr %16, i32 %inc28.sink.i.i
  %49 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink.i.i, ptr %arrayidx34.i.i, align 1
  %inc69.i.i = add i32 %count.2126.i.i, 1
  %cmp20.not.i.i = icmp sgt i32 %inc69.i.i, %10
  br i1 %cmp20.not.i.i, label %for.inc68.i.i.encode_sixpack.exit.i_crit_edge, label %for.inc68.i.i.for.body22.i.i_crit_edge

for.inc68.i.i.for.body22.i.i_crit_edge:           ; preds = %for.inc68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i.i

for.inc68.i.i.encode_sixpack.exit.i_crit_edge:    ; preds = %for.inc68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %encode_sixpack.exit.i

encode_sixpack.exit.i:                            ; preds = %for.inc68.i.i.encode_sixpack.exit.i_crit_edge, %for.end15.i.i.encode_sixpack.exit.i_crit_edge
  %raw_count.0.lcssa.i.i = phi i32 [ 2, %for.end15.i.i.encode_sixpack.exit.i_crit_edge ], [ %raw_count.1.i.i, %for.inc68.i.i.encode_sixpack.exit.i_crit_edge ]
  %rem71.i.i = srem i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem71.i.i)
  %cmp72.not.i.i = icmp ne i32 %rem71.i.i, 2
  %inc75.i.i = zext i1 %cmp72.not.i.i to i32
  %spec.select.i.i = add i32 %raw_count.0.lcssa.i.i, %inc75.i.i
  %inc77.i.i = add i32 %spec.select.i.i, 1
  %arrayidx78.i.i = getelementptr i8, ptr %16, i32 %spec.select.i.i
  %50 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %arrayidx78.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %buf.i.i) #11
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %52, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #11
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %9, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %54, label %encode_sixpack.exit.i.sp_encaps.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb26.i
    i8 3, label %sw.bb28.i
    i8 0, label %if.end38.i
    i8 5, label %sw.bb31.i
  ]

encode_sixpack.exit.i.sp_encaps.exit_crit_edge:   ; preds = %encode_sixpack.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sp_encaps.exit

sw.bb.i:                                          ; preds = %encode_sixpack.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx24.i = getelementptr i8, ptr %9, i32 1
  %56 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx24.i, align 1
  %58 = ptrtoint ptr %tx_delay.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %tx_delay.i, align 1
  br label %sp_encaps.exit

sw.bb26.i:                                        ; preds = %encode_sixpack.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27.i = getelementptr i8, ptr %9, i32 1
  %59 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx27.i, align 1
  %persistence.i = getelementptr i8, ptr %dev, i32 2758
  %61 = ptrtoint ptr %persistence.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %persistence.i, align 2
  br label %sp_encaps.exit

sw.bb28.i:                                        ; preds = %encode_sixpack.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29.i = getelementptr i8, ptr %9, i32 1
  %62 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx29.i, align 1
  %slottime.i = getelementptr i8, ptr %dev, i32 2759
  %64 = ptrtoint ptr %slottime.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %slottime.i, align 1
  br label %sp_encaps.exit

sw.bb31.i:                                        ; preds = %encode_sixpack.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx32.i = getelementptr i8, ptr %9, i32 1
  %65 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx32.i, align 1
  %duplex.i = getelementptr i8, ptr %dev, i32 2760
  %67 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %duplex.i, align 4
  br label %sp_encaps.exit

if.end38.i:                                       ; preds = %encode_sixpack.exit.i
  %duplex39.i = getelementptr i8, ptr %dev, i32 2760
  %68 = ptrtoint ptr %duplex39.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %duplex39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp41.i = icmp eq i8 %69, 1
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %led_state.i = getelementptr i8, ptr %dev, i32 2761
  %70 = ptrtoint ptr %led_state.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 112, ptr %led_state.i, align 1
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write.i, align 4
  %call47.i = tail call i32 %76(ptr noundef %72, ptr noundef %led_state.i, i32 noundef 1) #11
  %tx_enable.i = getelementptr i8, ptr %dev, i32 2765
  %77 = ptrtoint ptr %tx_enable.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %tx_enable.i, align 1
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 4
  %ops49.i = getelementptr inbounds %struct.tty_struct, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops49.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops49.i, align 4
  %write50.i = getelementptr inbounds %struct.tty_operations, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %write50.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write50.i, align 4
  %84 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xbuff.i, align 4
  %call53.i = tail call i32 %83(ptr noundef %79, ptr noundef %85, i32 noundef %inc77.i.i) #11
  %sub.i = sub i32 %inc77.i.i, %call53.i
  %xleft.i = getelementptr i8, ptr %dev, i32 2328
  %86 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.i, ptr %xleft.i, align 4
  %87 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xbuff.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %88, i32 %call53.i
  %xhead.i = getelementptr i8, ptr %dev, i32 2324
  %89 = ptrtoint ptr %xhead.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i14, ptr %xhead.i, align 4
  %90 = ptrtoint ptr %led_state.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 96, ptr %led_state.i, align 1
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 4
  %ops57.i = getelementptr inbounds %struct.tty_struct, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %ops57.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops57.i, align 4
  %write58.i = getelementptr inbounds %struct.tty_operations, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %write58.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write58.i, align 4
  %call61.i = tail call i32 %96(ptr noundef %92, ptr noundef %led_state.i, i32 noundef 1) #11
  br label %sp_encaps.exit

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %xleft62.i = getelementptr i8, ptr %dev, i32 2328
  %97 = ptrtoint ptr %xleft62.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %inc77.i.i, ptr %xleft62.i, align 4
  %98 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xbuff.i, align 4
  %xhead64.i = getelementptr i8, ptr %dev, i32 2324
  %100 = ptrtoint ptr %xhead64.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %xhead64.i, align 4
  %conv65.i = trunc i32 %inc77.i.i to i8
  %status2.i = getelementptr i8, ptr %dev, i32 2764
  %101 = ptrtoint ptr %status2.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv65.i, ptr %status2.i, align 4
  %tx_t.i = getelementptr i8, ptr %dev, i32 2768
  tail call void @sp_xmit_on_air(ptr noundef %tx_t.i) #11
  br label %sp_encaps.exit

out_drop.i:                                       ; preds = %if.end12.i.out_drop.i_crit_edge, %if.end4.i.out_drop.i_crit_edge, %if.end.i.out_drop.i_crit_edge, %if.end.out_drop.i_crit_edge
  %msg.0.i = phi ptr [ @.str.7, %if.end.out_drop.i_crit_edge ], [ @.str.8, %if.end.i.out_drop.i_crit_edge ], [ @.str.9, %if.end4.i.out_drop.i_crit_edge ], [ @.str.10, %if.end12.i.out_drop.i_crit_edge ]
  %dev.i = getelementptr i8, ptr %dev, i32 2308
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 36, i32 7
  %104 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %105, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  %106 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 103
  %107 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %108, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  %call68.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool.not.i, label %out_drop.i.sp_encaps.exit_crit_edge, label %do.end.i

out_drop.i.sp_encaps.exit_crit_edge:              ; preds = %out_drop.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sp_encaps.exit

do.end.i:                                         ; preds = %out_drop.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %110, ptr noundef nonnull %msg.0.i) #14
  br label %sp_encaps.exit

sp_encaps.exit:                                   ; preds = %do.end.i, %out_drop.i.sp_encaps.exit_crit_edge, %if.else.i, %if.then43.i, %sw.bb31.i, %sw.bb28.i, %sw.bb26.i, %sw.bb.i, %encode_sixpack.exit.i.sp_encaps.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %sp_encaps.exit, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %sp_encaps.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #11
  tail call void @netif_tx_lock(ptr noundef %dev) #11
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 73
  %0 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nested_level.i, align 1
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63
  %conv.i = zext i8 %1 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #11
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sax25_call, i32 noundef 7) #11
  tail call void @_raw_spin_unlock(ptr noundef %addr_list_lock.i) #11
  tail call void @netif_tx_unlock(ptr noundef %dev) #11
  tail call fastcc void @local_bh_enable() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_mode_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__UNIQUE_ID_author474, !1, !"__UNIQUE_ID_author474", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/6pack.c", i32 967, i32 1}
!2 = !{ptr @__UNIQUE_ID_description475, !3, !"__UNIQUE_ID_description475", i1 false, i1 false}
!3 = !{!"../drivers/net/hamradio/6pack.c", i32 968, i32 1}
!4 = !{ptr @__UNIQUE_ID_file476, !5, !"__UNIQUE_ID_file476", i1 false, i1 false}
!5 = !{!"../drivers/net/hamradio/6pack.c", i32 969, i32 1}
!6 = !{ptr @__UNIQUE_ID_license477, !5, !"__UNIQUE_ID_license477", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias478, !8, !"__UNIQUE_ID_alias478", i1 false, i1 false}
!8 = !{!"../drivers/net/hamradio/6pack.c", i32 970, i32 1}
!9 = !{ptr @__initcall__kmod_6pack__479_972_sixpack_init_driver6, !10, !"__initcall__kmod_6pack__479_972_sixpack_init_driver6", i1 false, i1 false}
!10 = !{!"../drivers/net/hamradio/6pack.c", i32 972, i32 1}
!11 = !{ptr @__exitcall_sixpack_exit_driver, !12, !"__exitcall_sixpack_exit_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/hamradio/6pack.c", i32 973, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/hamradio/6pack.c", i32 747, i32 11}
!15 = !{ptr @sp_ldisc, !16, !"sp_ldisc", i1 false, i1 false}
!16 = !{!"../drivers/net/hamradio/6pack.c", i32 744, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/hamradio/6pack.c", i32 557, i32 8}
!19 = !{ptr @sixpack_open.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/hamradio/6pack.c", i32 567, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sixpack_open.__key.3, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/hamradio/6pack.c", i32 611, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sixpack_open.__key.5, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/net/hamradio/6pack.c", i32 613, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sp_netdev_ops, !29, !"sp_netdev_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/hamradio/6pack.c", i32 298, i32 36}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/hamradio/6pack.c", i32 170, i32 9}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/hamradio/6pack.c", i32 175, i32 9}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/hamradio/6pack.c", i32 180, i32 9}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/hamradio/6pack.c", i32 185, i32 9}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/hamradio/6pack.c", i32 236, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sp_encaps._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @sp_encaps._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sp_xmit_on_air.random, !48, !"random", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/6pack.c", i32 143, i32 23}
!49 = !{ptr @resync_tnc.resync_cmd, !50, !"resync_cmd", i1 false, i1 false}
!50 = !{!"../drivers/net/hamradio/6pack.c", i32 500, i32 14}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/hamradio/6pack.c", i32 475, i32 9}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/hamradio/6pack.c", i32 478, i32 9}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/hamradio/6pack.c", i32 481, i32 9}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/hamradio/6pack.c", i32 486, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__tnc_set_sync_state._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @__tnc_set_sync_state._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/hamradio/6pack.c", i32 369, i32 8}
!64 = !{ptr @disc_data_lock, !63, !"disc_data_lock", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/hamradio/6pack.c", i32 865, i32 6}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @decode_prio_command._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @decode_prio_command._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/hamradio/6pack.c", i32 927, i32 5}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @decode_std_command._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @decode_std_command._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/hamradio/6pack.c", i32 935, i32 21}
!84 = !{ptr @decode_std_command._entry.28, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @decode_std_command._entry_ptr.30, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/hamradio/6pack.c", i32 937, i32 21}
!88 = !{ptr @decode_std_command._entry.31, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @decode_std_command._entry_ptr.33, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/hamradio/6pack.c", i32 940, i32 3}
!92 = !{ptr @decode_std_command._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @decode_std_command._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/hamradio/6pack.c", i32 832, i32 3}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @decode_data._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @decode_data._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/hamradio/6pack.c", i32 766, i32 2}
!101 = !{ptr @sixpack_init_driver._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sixpack_init_driver._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @sixpack_init_driver._entry.40, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/net/hamradio/6pack.c", i32 771, i32 3}
!105 = !{ptr @sixpack_init_driver._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @msg_banner, !107, !"msg_banner", i1 false, i1 false}
!107 = !{!"../drivers/net/hamradio/6pack.c", i32 757, i32 19}
!108 = !{ptr @msg_regfail, !109, !"msg_regfail", i1 false, i1 false}
!109 = !{!"../drivers/net/hamradio/6pack.c", i32 759, i32 19}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148451359}
!121 = !{i64 2148365799, i64 2148365831, i64 2148365860, i64 2148365894, i64 2148365925, i64 2148365948}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2149327473}
!124 = !{i64 2148363334, i64 2148363366, i64 2148363395, i64 2148363429, i64 2148363460, i64 2148363483}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2152080190, i64 2152080215}
!127 = !{i64 4575064}
!128 = !{i64 4575261}
!129 = !{i64 2152060494}
!130 = !{i64 2157281859, i64 2157282139, i64 2157282473, i64 2157282807}
!131 = !{i64 2157293402, i64 2157293682, i64 2157294016, i64 2157294350}
!132 = !{i64 2152079509, i64 2152079534}
