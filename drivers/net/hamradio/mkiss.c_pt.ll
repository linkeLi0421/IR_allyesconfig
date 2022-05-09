; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/mkiss.c_pt.bc'
source_filename = "../drivers/net/hamradio/mkiss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
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
%struct.mkiss = type { ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, %struct.completion }
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

@ax_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 5, ptr @mkiss_open, ptr @mkiss_close, ptr null, ptr null, ptr null, ptr @mkiss_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mkiss_receive_buf, ptr @mkiss_write_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author459 = internal constant [54 x i8] c"mkiss.author=Ralf Baechle DL5RB <ralf@linux-mips.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [50 x i8] c"mkiss.description=KISS driver for AX.25 over TTYs\00", section ".modinfo", align 1
@__param_str_crc_force = internal constant [16 x i8] c"mkiss.crc_force\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@crc_force = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_crc_force = internal constant %struct.kernel_param { ptr @__param_str_crc_force, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @crc_force } }, section "__param", align 4
@__UNIQUE_ID_crc_forcetype461 = internal constant [29 x i8] c"mkiss.parmtype=crc_force:int\00", section ".modinfo", align 1
@__UNIQUE_ID_crc_force462 = internal constant [73 x i8] c"mkiss.parm=crc_force:crc [0 = auto | 1 = none | 2 = flexnet | 3 = smack]\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [38 x i8] c"mkiss.file=drivers/net/hamradio/mkiss\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [18 x i8] c"mkiss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias465 = internal constant [24 x i8] c"mkiss.alias=tty-ldisc-5\00", section ".modinfo", align 1
@__initcall__kmod_mkiss__466_979_mkiss_init_driver6 = internal global ptr @mkiss_init_driver, section ".initcall6.init", align 4
@__exitcall_mkiss_exit_driver = internal global ptr @mkiss_exit_driver, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mkiss\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ax%d\00", [27 x i8] zeroinitializer }, align 32
@mkiss_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ax->buflock\00", [19 x i8] zeroinitializer }, align 32
@mkiss_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016mkiss: %s: crc mode smack forced.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mkiss_open\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/hamradio/mkiss.c\00", [35 x i8] zeroinitializer }, align 32
@mkiss_open._entry_ptr = internal global ptr @mkiss_open._entry, section ".printk_index", align 4
@mkiss_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mkiss: %s: crc mode flexnet forced.\0A\00", [57 x i8] zeroinitializer }, align 32
@mkiss_open._entry_ptr.8 = internal global ptr @mkiss_open._entry.6, section ".printk_index", align 4
@mkiss_open._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mkiss: %s: crc mode disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@mkiss_open._entry_ptr.11 = internal global ptr @mkiss_open._entry.9, section ".printk_index", align 4
@mkiss_open._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mkiss: %s: crc mode is auto.\0A\00", [32 x i8] zeroinitializer }, align 32
@mkiss_open._entry_ptr.14 = internal global ptr @mkiss_open._entry.12, section ".printk_index", align 4
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ax_open_dev, ptr @ax_close, ptr @ax_xmit, ptr null, ptr null, ptr null, ptr null, ptr @ax_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@ax25_defaddr = external dso_local constant %struct.ax25_address, align 1
@ax_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mkiss: %s: xmit call when iface is down\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ax_xmit\00", [24 x i8] zeroinitializer }, align 32
@ax_xmit._entry_ptr = internal global ptr @ax_xmit._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ax_xmit._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mkiss: %s: transmit timed out, %s?\0A\00", [58 x i8] zeroinitializer }, align 32
@ax_xmit._entry_ptr.19 = internal global ptr @ax_xmit._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad line quality\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"driver error\00", [19 x i8] zeroinitializer }, align 32
@ax_encaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013mkiss: %s: truncating oversized transmit packet!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ax_encaps\00", [22 x i8] zeroinitializer }, align 32
@ax_encaps._entry_ptr = internal global ptr @ax_encaps._entry, section ".printk_index", align 4
@ax_encaps._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mkiss: %s: crc mode set to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ax_encaps._entry_ptr.26 = internal global ptr @ax_encaps._entry.24, section ".printk_index", align 4
@ax_encaps._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016mkiss: %s: Trying crc-smack\0A\00", [33 x i8] zeroinitializer }, align 32
@ax_encaps._entry_ptr.29 = internal global ptr @ax_encaps._entry.27, section ".printk_index", align 4
@ax_encaps._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.5, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016mkiss: %s: Trying crc-flexnet\0A\00", [63 x i8] zeroinitializer }, align 32
@ax_encaps._entry_ptr.32 = internal global ptr @ax_encaps._entry.30, section ".printk_index", align 4
@ax_changedmtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013mkiss: %s: unable to grow ax25 buffers, MTU change cancelled.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax_changedmtu\00", [18 x i8] zeroinitializer }, align 32
@ax_changedmtu._entry_ptr = internal global ptr @ax_changedmtu._entry, section ".printk_index", align 4
@crc_flex_table = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 3975, i16 7694, i16 11413, i16 15644, i16 18851, i16 22570, i16 27313, i16 31544, i16 -31793, i16 -28090, i16 -24355, i16 -20140, i16 -14869, i16 -11166, i16 -6407, i16 -2192, i16 7942, i16 3727, i16 15380, i16 11677, i16 22818, i16 18603, i16 31280, i16 27577, i16 -27826, i16 -32057, i16 -20388, i16 -24107, i16 -10902, i16 -15133, i16 -2440, i16 -6159, i16 11909, i16 16140, i16 3479, i16 7198, i16 26785, i16 31016, i16 19379, i16 23098, i16 -23859, i16 -19644, i16 -32289, i16 -28586, i16 -6935, i16 -2720, i16 -14341, i16 -10638, i16 15876, i16 12173, i16 7446, i16 3231, i16 30752, i16 27049, i16 23346, i16 19131, i16 -19892, i16 -23611, i16 -28322, i16 -32553, i16 -2968, i16 -6687, i16 -10374, i16 -14605, i16 19843, i16 23562, i16 28305, i16 32536, i16 2983, i16 6702, i16 10421, i16 14652, i16 -15925, i16 -12222, i16 -7463, i16 -3248, i16 -30737, i16 -27034, i16 -23299, i16 -19084, i16 23810, i16 19595, i16 32272, i16 28569, i16 6950, i16 2735, i16 14388, i16 10685, i16 -11958, i16 -16189, i16 -3496, i16 -7215, i16 -26770, i16 -31001, i16 -19332, i16 -23051, i16 27777, i16 32008, i16 20371, i16 24090, i16 10917, i16 15148, i16 2487, i16 6206, i16 -7991, i16 -3776, i16 -15397, i16 -11694, i16 -22803, i16 -18588, i16 -31233, i16 -27530, i16 31744, i16 28041, i16 24338, i16 20123, i16 14884, i16 11181, i16 6454, i16 2239, i16 -4024, i16 -7743, i16 -11430, i16 -15661, i16 -18836, i16 -22555, i16 -27266, i16 -31497, i16 -29809, i16 -26106, i16 -22371, i16 -18156, i16 -12885, i16 -9182, i16 -4423, i16 -208, i16 1991, i16 5710, i16 9429, i16 13660, i16 16867, i16 20586, i16 25329, i16 29560, i16 -25842, i16 -30073, i16 -18404, i16 -22123, i16 -8918, i16 -13149, i16 -456, i16 -4175, i16 5958, i16 1743, i16 13396, i16 9693, i16 20834, i16 16619, i16 29296, i16 25593, i16 -21875, i16 -17660, i16 -30305, i16 -26602, i16 -4951, i16 -736, i16 -12357, i16 -8654, i16 9925, i16 14156, i16 1495, i16 5214, i16 24801, i16 29032, i16 17395, i16 21114, i16 -17908, i16 -21627, i16 -26338, i16 -30569, i16 -984, i16 -4703, i16 -8390, i16 -12621, i16 13892, i16 10189, i16 5462, i16 1247, i16 28768, i16 25065, i16 21362, i16 17147, i16 -13941, i16 -10238, i16 -5479, i16 -1264, i16 -28753, i16 -25050, i16 -21315, i16 -17100, i16 17859, i16 21578, i16 26321, i16 30552, i16 999, i16 4718, i16 8437, i16 12668, i16 -9974, i16 -14205, i16 -1512, i16 -5231, i16 -24786, i16 -29017, i16 -17348, i16 -21067, i16 21826, i16 17611, i16 30288, i16 26585, i16 4966, i16 751, i16 12404, i16 8701, i16 -6007, i16 -1792, i16 -13413, i16 -9710, i16 -20819, i16 -16604, i16 -29249, i16 -25546, i16 25793, i16 30024, i16 18387, i16 22106, i16 8933, i16 13164, i16 503, i16 4222, i16 -2040, i16 -5759, i16 -9446, i16 -13677, i16 -16852, i16 -20571, i16 -25282, i16 -29513, i16 29760, i16 26057, i16 22354, i16 18139, i16 12900, i16 9197, i16 4470, i16 255], [128 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ax_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@disc_data_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disc_data_lock\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ax_bump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016mkiss: %s: Switching to crc-smack\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ax_bump\00", [24 x i8] zeroinitializer }, align 32
@ax_bump._entry_ptr = internal global ptr @ax_bump._entry, section ".printk_index", align 4
@ax_bump._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016mkiss: %s: Switching to crc-flexnet\0A\00", [57 x i8] zeroinitializer }, align 32
@ax_bump._entry_ptr.44 = internal global ptr @ax_bump._entry.42, section ".printk_index", align 4
@ax_bump._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013mkiss: %s: memory squeeze, dropping packet.\0A\00", [49 x i8] zeroinitializer }, align 32
@ax_bump._entry_ptr.47 = internal global ptr @ax_bump._entry.45, section ".printk_index", align 4
@mkiss_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.48, ptr @.str.5, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mkiss_init_driver\00", [46 x i8] zeroinitializer }, align 32
@mkiss_init_driver._entry_ptr = internal global ptr @mkiss_init_driver._entry, section ".printk_index", align 4
@banner = internal constant [45 x i8] c"\016mkiss: AX.25 Multikiss, Hans Albas PE1AYX\0A\00", section ".init.rodata", align 1
@mkiss_init_driver._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.48, ptr @.str.5, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mkiss_init_driver._entry_ptr.50 = internal global ptr @mkiss_init_driver._entry.49, section ".printk_index", align 4
@msg_regfail = internal constant [52 x i8] c"\013mkiss: can't register line discipline (err = %d)\0A\00", section ".init.rodata", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 35088, i64 35108, i64 35109, i64 35110]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 8, i64 192, i64 219, i64 220, i64 221]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 192, i64 219]
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"ax_ldisc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 938, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"crc_force\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 686, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 941, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 699, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 709, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 735, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 740, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 745, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 751, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"ax_netdev_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 632, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 528, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 542, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 435, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 471, i32 5 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 486, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 495, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 378, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"crc_flex_table\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 82, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 607, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"disc_data_lock\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 665, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 230, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 214, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 174, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 252, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 266, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 286, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 958, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private constant [32 x i8] c"../drivers/net/hamradio/mkiss.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 962, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_alias465, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_crc_force462, ptr @__UNIQUE_ID_crc_forcetype461, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_mkiss_exit_driver, ptr @__initcall__kmod_mkiss__466_979_mkiss_init_driver6, ptr @__param_crc_force, ptr @ax_bump._entry, ptr @ax_bump._entry.42, ptr @ax_bump._entry.45, ptr @ax_bump._entry_ptr, ptr @ax_bump._entry_ptr.44, ptr @ax_bump._entry_ptr.47, ptr @ax_changedmtu._entry, ptr @ax_changedmtu._entry_ptr, ptr @ax_encaps._entry, ptr @ax_encaps._entry.24, ptr @ax_encaps._entry.27, ptr @ax_encaps._entry.30, ptr @ax_encaps._entry_ptr, ptr @ax_encaps._entry_ptr.26, ptr @ax_encaps._entry_ptr.29, ptr @ax_encaps._entry_ptr.32, ptr @ax_xmit._entry, ptr @ax_xmit._entry.17, ptr @ax_xmit._entry_ptr, ptr @ax_xmit._entry_ptr.19, ptr @mkiss_exit_driver, ptr @mkiss_init_driver._entry, ptr @mkiss_init_driver._entry.49, ptr @mkiss_init_driver._entry_ptr, ptr @mkiss_init_driver._entry_ptr.50, ptr @mkiss_open._entry, ptr @mkiss_open._entry.12, ptr @mkiss_open._entry.6, ptr @mkiss_open._entry.9, ptr @mkiss_open._entry_ptr, ptr @mkiss_open._entry_ptr.11, ptr @mkiss_open._entry_ptr.14, ptr @mkiss_open._entry_ptr.8, ptr @ax_ldisc, ptr @crc_force, ptr @.str, ptr @.str.1, ptr @mkiss_open.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @ax_netdev_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @crc_flex_table, ptr @init_completion.__key, ptr @.str.35, ptr @ax_open.__key, ptr @disc_data_lock, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_force to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_open._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_open._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_xmit._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_encaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_encaps._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_encaps._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_encaps._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_changedmtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_flex_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_data_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_bump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_bump._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_bump._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mkiss_init_driver._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mkiss_exit_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @ax_ldisc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mkiss_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @banner) #15
  %call1 = tail call i32 @tty_register_ldisc(ptr noundef nonnull @ax_ldisc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %do.end7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @msg_regfail, i32 noundef %call1) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %entry.if.end10_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mkiss_open(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @alloc_netdev_mqs(i32 noundef 156, ptr noundef nonnull @.str.1, i8 noundef zeroext 0, ptr noundef nonnull @ax_setup, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %add.ptr.i = getelementptr i8, ptr %call3, i32 2304
  %dev7 = getelementptr i8, ptr %call3, i32 2308
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %dev7, align 4
  %buflock = getelementptr i8, ptr %call3, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %buflock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mkiss_open.__key, i16 noundef signext 3) #12
  %refcnt = getelementptr i8, ptr %call3, i32 2400
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %refcnt, align 4
  %dead = getelementptr i8, ptr %call3, i32 2404
  %6 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dead, align 4
  %wait.i = getelementptr i8, ptr %call3, i32 2408
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #12
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tty, ptr %add.ptr.i, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %8 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %9 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %receive_room, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #12
  %type = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 32
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %type, align 16
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 2304
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %if.end5.out_free_netdev_crit_edge, label %if.end.i

if.end5.out_free_netdev_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_netdev

if.end.i:                                         ; preds = %if.end5
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 20
  %15 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu.i, align 4
  %mul.i = shl i32 %16, 1
  %17 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1152) #12
  %add.i = add i32 %17, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %rbuff71.i = getelementptr i8, ptr %12, i32 2356
  %18 = ptrtoint ptr %rbuff71.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %rbuff71.i, align 4
  %cmp572.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp572.i, label %if.end.i.out_free_netdev_crit_edge, label %if.end8.i59.i

if.end.i.out_free_netdev_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_netdev

if.end8.i59.i:                                    ; preds = %if.end.i
  %call9.i58.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %xbuff.i = getelementptr i8, ptr %12, i32 2364
  %19 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i58.i, ptr %xbuff.i, align 4
  %cmp10.i = icmp eq ptr %call9.i58.i, null
  br i1 %cmp10.i, label %if.end8.i59.i.out_free_netdev.sink.split_crit_edge, label %if.end14

if.end8.i59.i.out_free_netdev.sink.split_crit_edge: ; preds = %if.end8.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_netdev.sink.split

if.end14:                                         ; preds = %if.end8.i59.i
  %20 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu.i, align 4
  %add14.i = add i32 %21, 73
  %mtu15.i = getelementptr i8, ptr %12, i32 2376
  %22 = ptrtoint ptr %mtu15.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add14.i, ptr %mtu15.i, align 4
  %buffsize.i = getelementptr i8, ptr %12, i32 2380
  %23 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %buffsize.i, align 4
  %rcount.i = getelementptr i8, ptr %12, i32 2360
  %24 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rcount.i, align 4
  %xleft.i = getelementptr i8, ptr %12, i32 2372
  %25 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %xleft.i, align 4
  %flags.i = getelementptr i8, ptr %12, i32 2384
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 1
  store i32 %and.i, ptr %flags.i, align 4
  %buflock.i = getelementptr i8, ptr %12, i32 2312
  tail call void @__raw_spin_lock_init(ptr noundef %buflock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ax_open.__key, i16 noundef signext 3) #12
  %call15 = tail call i32 @register_netdev(ptr noundef nonnull %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %out_free_buffers

if.end18:                                         ; preds = %if.end14
  %28 = load i32, ptr @crc_force, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb24
    i32 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %crcmode = getelementptr i8, ptr %call3, i32 2392
  %30 = ptrtoint ptr %crcmode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %crcmode, align 4
  %31 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev7, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %32) #15
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %crcmode25 = getelementptr i8, ptr %call3, i32 2392
  %33 = ptrtoint ptr %crcmode25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %crcmode25, align 4
  %34 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev7, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %35) #15
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %crcmode35 = getelementptr i8, ptr %call3, i32 2392
  %36 = ptrtoint ptr %crcmode35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %crcmode35, align 4
  %37 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev7, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %38) #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @crc_force, align 4
  %39 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev7, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %40) #15
  %crcmode53 = getelementptr i8, ptr %call3, i32 2392
  %41 = ptrtoint ptr %crcmode53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %crcmode53, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb24, %sw.bb
  %42 = load i32, ptr @crc_force, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not = icmp eq i32 %42, 0
  %cond = zext i1 %tobool54.not to i32
  %crcauto = getelementptr i8, ptr %call3, i32 2396
  %43 = ptrtoint ptr %crcauto to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %crcauto, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 103
  %44 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %45, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

out_free_buffers:                                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %rbuff = getelementptr i8, ptr %call3, i32 2356
  %46 = ptrtoint ptr %rbuff to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rbuff, align 4
  tail call void @kfree(ptr noundef %47) #12
  %xbuff = getelementptr i8, ptr %call3, i32 2364
  br label %out_free_netdev.sink.split

out_free_netdev.sink.split:                       ; preds = %out_free_buffers, %if.end8.i59.i.out_free_netdev.sink.split_crit_edge
  %rbuff6567.i.sink = phi ptr [ %xbuff, %out_free_buffers ], [ %rbuff71.i, %if.end8.i59.i.out_free_netdev.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call15, %out_free_buffers ], [ -12, %if.end8.i59.i.out_free_netdev.sink.split_crit_edge ]
  %48 = ptrtoint ptr %rbuff6567.i.sink to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rbuff6567.i.sink, align 4
  tail call void @kfree(ptr noundef %49) #12
  br label %out_free_netdev

out_free_netdev:                                  ; preds = %out_free_netdev.sink.split, %if.end.i.out_free_netdev_crit_edge, %if.end5.out_free_netdev_crit_edge
  %err.0 = phi i32 [ -12, %if.end.i.out_free_netdev_crit_edge ], [ -19, %if.end5.out_free_netdev_crit_edge ], [ %err.0.ph, %out_free_netdev.sink.split ]
  tail call void @free_netdev(ptr noundef nonnull %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_netdev, %sw.epilog, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %err.0, %out_free_netdev ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mkiss_close(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @disc_data_lock) #12
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  store ptr null, ptr %disc_data, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @disc_data_lock) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !136

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  br label %if.end3

if.then2:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then2_crit_edge
  %dead = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 15
  tail call void @wait_for_completion(ptr noundef %dead) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %refcount_dec_and_test.exit
  %dev = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %8) #12
  %rbuff = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %rbuff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rbuff, align 4
  tail call void @kfree(ptr noundef %10) #12
  %xbuff = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %xbuff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xbuff, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mkiss_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %addr = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #12
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mkiss_get.exit, label %if.then.i60

if.then.i60:                                      ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !139

if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i60
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !136

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i60.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

mkiss_get.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  br label %cleanup32

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  %dev1 = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 35088, label %sw.bb
    i32 35109, label %sw.bb8
    i32 35110, label %sw.bb12
    i32 35108, label %sw.bb26
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %7 = inttoptr i32 %arg to ptr
  %call6 = tail call i32 @strlen(ptr noundef %5) #17
  %add = add i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9.i.i = icmp slt i32 %add, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %sw.bb
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.sw.epilog_crit_edge, label %if.then27.i.i, !prof !136

land.rhs16.i.i.sw.epilog_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %sw.bb
  tail call void @__check_object_size(ptr noundef %5, i32 noundef %add, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %add, i32 -1226833920) #18, !srcloc !140
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef %add) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef %5, i32 noundef %add) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 828) #12
  %10 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !141
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 4, i32 -1226833921) #12, !srcloc !144
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 832) #12
  %14 = inttoptr i32 %arg to ptr
  %15 = tail call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i.i.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i49 to ptr
  %cpu_domain.i.i50 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i50) #11, !srcloc !141
  %and.i51 = and i32 %17, -13
  %or.i52 = or i32 %and.i51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i52) #12, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %14, i32 -1226833921) #12, !srcloc !145
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool23.not = icmp eq i32 %asmresult, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end25:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult21 = extractvalue { i32, i32 } %18, 1
  %mode = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %asmresult21, ptr %mode, align 4
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

sw.bb26:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %addr) #12
  %23 = inttoptr i32 %arg to ptr
  %24 = call ptr @memset(ptr %addr, i32 255, i32 7)
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 156) #12
  %call.i.i54 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i54, label %sw.bb26.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb26.if.then11.i.i_crit_edge:                  ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb26
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 7, i32 -1226833920) #18, !srcloc !146
  %asmresult.i.i56 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i56, 0
  br i1 %cmp.i1.i, label %if.end.i.i58, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !136

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i58:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %addr, i32 noundef 7) #12
  %26 = call i32 @llvm.read_register.i32(metadata !124) #12
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !141
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %addr, ptr noundef %23, i32 noundef 7) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !142
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end30, label %if.end.i.i58.if.then11.i.i_crit_edge, !prof !136

if.end.i.i58.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i58.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb26.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i58.if.then11.i.i_crit_edge ], [ 7, %sw.bb26.if.then11.i.i_crit_edge ], [ 7, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 7, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end30:                                         ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @local_bh_disable() #12
  call void @netif_tx_lock(ptr noundef %5) #12
  call void @dev_addr_mod(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 7) #12
  call void @netif_tx_unlock(ptr noundef %5) #12
  call fastcc void @local_bh_enable() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then11.i.i
  %err.0 = phi i32 [ 0, %if.end30 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %addr) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup, %if.end25, %sw.bb12.sw.epilog_crit_edge, %sw.bb8, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %err.1 = phi i32 [ %err.0, %cleanup ], [ 0, %if.end25 ], [ %13, %sw.bb8 ], [ -14, %sw.bb12.sw.epilog_crit_edge ], [ -515, %if.end.sw.epilog_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %call.i.i.i.i.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i64, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i63 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i63, label %if.end5.i.i.i.i.cleanup32_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end5.i.i.i.i.cleanup32_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup32

if.then.i64:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  %dead.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 15
  call void @complete(ptr noundef %dead.i) #12
  br label %cleanup32

cleanup32:                                        ; preds = %if.then.i64, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup32_crit_edge, %mkiss_get.exit
  %retval.0 = phi i32 [ -6, %mkiss_get.exit ], [ %err.1, %if.end5.i.i.i.i.cleanup32_crit_edge ], [ %err.1, %if.then10.i.i.i.i ], [ %err.1, %if.then.i64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mkiss_receive_buf(ptr noundef %tty, ptr nocapture noundef readonly %cp, ptr noundef readonly %fp, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #12
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mkiss_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !139

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !136

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

mkiss_get.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  %mtu = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %dev = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu1, align 4
  %add = add i32 %9, 73
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.not = icmp eq i32 %5, %add
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ax_changedmtu(ptr noundef nonnull %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not34 = icmp eq i32 %count, 0
  br i1 %tobool4.not34, label %if.end3.while.end_crit_edge, label %while.body.lr.ph

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end3
  %flags = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 10
  %rcount.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 4
  %buflock.i.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 2
  %rbuff.i.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 3
  %crcmode.i.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 12
  %crcauto.i.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 13
  %buffsize.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec37.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec37, %while.cond.backedge.while.body_crit_edge ]
  %fp.addr.036 = phi ptr [ %fp, %while.body.lr.ph ], [ %fp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %cp.addr.035 = phi ptr [ %cp, %while.body.lr.ph ], [ %cp.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %dec37 = add i32 %dec37.in, -1
  %cmp5.not = icmp eq ptr %fp.addr.036, null
  br i1 %cmp5.not, label %while.body.if.end14_crit_edge, label %land.lhs.true

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %fp.addr.036, i32 1
  %10 = ptrtoint ptr %fp.addr.036 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fp.addr.036, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %if.then7

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then7:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.while.cond.backedge_crit_edge

if.then7.while.cond.backedge_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 4
  %14 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end37.i, %if.then31.i, %sw.bb10.i, %if.end7.i, %if.then10, %if.then7.while.cond.backedge_crit_edge
  %fp.addr.0.be = phi ptr [ %fp.addr.1, %if.end7.i ], [ %fp.addr.1, %sw.bb10.i ], [ %fp.addr.1, %if.then31.i ], [ %fp.addr.1, %if.end37.i ], [ %incdec.ptr, %if.then10 ], [ %incdec.ptr, %if.then7.while.cond.backedge_crit_edge ]
  %cp.addr.0.be = getelementptr i8, ptr %cp.addr.035, i32 1
  %tobool4.not = icmp eq i32 %dec37, 0
  br i1 %tobool4.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %fp.addr.1 = phi ptr [ %incdec.ptr, %land.lhs.true.if.end14_crit_edge ], [ null, %while.body.if.end14_crit_edge ]
  %16 = ptrtoint ptr %cp.addr.035 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cp.addr.035, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %17, label %if.end14.sw.epilog.i_crit_edge [
    i8 -64, label %sw.bb.i
    i8 -37, label %sw.bb10.i
    i8 -35, label %sw.bb12.i
    i8 -36, label %sw.bb18.i
  ]

if.end14.sw.epilog.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end14
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i26 = icmp eq i32 %21, 0
  br i1 %tobool.not.i26, label %sw.bb.i.if.end.i_crit_edge, label %if.then.i27

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i27:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i27, %sw.bb.i.if.end.i_crit_edge
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %22 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp sgt i32 %23, 2
  br i1 %cmp.i, label %if.then6.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  tail call void @_raw_spin_lock_bh(ptr noundef %buflock.i.i) #12
  %24 = ptrtoint ptr %rbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rbuff.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %27)
  %cmp.i.i = icmp ugt i8 %27, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then6.i.if.end67.i.i_crit_edge

if.then6.i.if.end67.i.i_crit_edge:                ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i.i

if.then.i.i:                                      ; preds = %if.then6.i
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %28 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i.i.i = icmp slt i32 %29, 3
  br i1 %cmp.i.i.i, label %if.then5.i.i.if.then9.i.i_crit_edge, label %check_crc_16.exit.i.i

if.then5.i.i.if.then9.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

check_crc_16.exit.i.i:                            ; preds = %if.then5.i.i
  %call.i.i.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %25, i32 noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i.i)
  %cmp1.not.i.not.i.i = icmp eq i16 %call.i.i.i, 0
  br i1 %cmp1.not.i.not.i.i, label %if.end.i.i, label %check_crc_16.exit.i.i.if.then9.i.i_crit_edge

check_crc_16.exit.i.i.if.then9.i.i_crit_edge:     ; preds = %check_crc_16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %check_crc_16.exit.i.i.if.then9.i.i_crit_edge, %if.then5.i.i.if.then9.i.i_crit_edge
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 4
  br label %ax_bump.exit.i

if.end.i.i:                                       ; preds = %check_crc_16.exit.i.i
  %32 = ptrtoint ptr %crcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %crcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp11.not.i.i = icmp eq i32 %33, 2
  br i1 %cmp11.not.i.i, label %if.end.i.i.if.end67.sink.split.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end67.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %34 = ptrtoint ptr %crcauto.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %crcauto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool13.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.if.end67.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge

land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i.sink.split

land.lhs.true.i.i.if.end67.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  %and27.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.else.i.i.if.end67.i.i_crit_edge, label %if.then29.i.i

if.else.i.i.if.end67.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i.i

if.then29.i.i:                                    ; preds = %if.else.i.i
  %36 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i135.i.i = icmp slt i32 %37, 3
  br i1 %cmp.i135.i.i, label %if.then29.i.i.if.then35.i.i_crit_edge, label %if.then29.i.i.while.body.i.i.i_crit_edge

if.then29.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then29.i.i
  br label %while.body.i.i.i

if.then29.i.i.if.then35.i.i_crit_edge:            ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then29.i.i.while.body.i.i.i_crit_edge
  %crc.018.i.i.i = phi i32 [ %phi.cast.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 65535, %if.then29.i.i.while.body.i.i.i_crit_edge ]
  %size.addr.017.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %37, %if.then29.i.i.while.body.i.i.i_crit_edge ]
  %cp.addr.016.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %25, %if.then29.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %size.addr.017.i.i.i, -1
  %shl.i.i.i = shl nsw i32 %crc.018.i.i.i, 8
  %38 = lshr i32 %crc.018.i.i.i, 8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %cp.addr.016.i.i.i, i32 1
  %39 = ptrtoint ptr %cp.addr.016.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cp.addr.016.i.i.i, align 1
  %conv2.i.i.i = zext i8 %40 to i32
  %.masked.i.i.i = and i32 %38, 255
  %and.i.i.i = xor i32 %.masked.i.i.i, %conv2.i.i.i
  %arrayidx.i.i.i = getelementptr [256 x i16], ptr @crc_flex_table, i32 0, i32 %and.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv3.i.i.i = zext i16 %42 to i32
  %shl.masked.i.i.i = and i32 %shl.i.i.i, 65280
  %phi.cast.i.i.i = xor i32 %shl.masked.i.i.i, %conv3.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %check_crc_flex.exit.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

check_crc_flex.exit.i.i:                          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28784, i32 %phi.cast.i.i.i)
  %cmp8.not.i.not.i.i = icmp eq i32 %phi.cast.i.i.i, 28784
  br i1 %cmp8.not.i.not.i.i, label %if.end41.i.i, label %check_crc_flex.exit.i.i.if.then35.i.i_crit_edge

check_crc_flex.exit.i.i.if.then35.i.i_crit_edge:  ; preds = %check_crc_flex.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.i.i

if.then35.i.i:                                    ; preds = %check_crc_flex.exit.i.i.if.then35.i.i_crit_edge, %if.then29.i.i.if.then35.i.i_crit_edge
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %rx_errors38.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 36, i32 4
  br label %ax_bump.exit.i

if.end41.i.i:                                     ; preds = %check_crc_flex.exit.i.i
  %45 = ptrtoint ptr %crcmode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %crcmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp43.not.i.i = icmp eq i32 %46, 1
  br i1 %cmp43.not.i.i, label %if.end41.i.i.if.end67.sink.split.i.i_crit_edge, label %land.lhs.true45.i.i

if.end41.i.i.if.end67.sink.split.i.i_crit_edge:   ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i

land.lhs.true45.i.i:                              ; preds = %if.end41.i.i
  %47 = ptrtoint ptr %crcauto.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %crcauto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool47.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool47.not.i.i, label %land.lhs.true45.i.i.if.end67.sink.split.i.i_crit_edge, label %land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge

land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge: ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i.sink.split

land.lhs.true45.i.i.if.end67.sink.split.i.i_crit_edge: ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split.i.i

if.end67.sink.split.i.i.sink.split:               ; preds = %land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge, %land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.40, %land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ], [ @.str.43, %land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ]
  %.sink = phi i32 [ 2, %land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ], [ 1, %land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ]
  %.sink145.i.i.ph = phi i8 [ 127, %land.lhs.true.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ], [ -33, %land.lhs.true45.i.i.if.end67.sink.split.i.i.sink.split_crit_edge ]
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %call56.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.43.sink, ptr noundef %50) #15
  %51 = ptrtoint ptr %crcmode.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %crcmode.i.i, align 4
  br label %if.end67.sink.split.i.i

if.end67.sink.split.i.i:                          ; preds = %if.end67.sink.split.i.i.sink.split, %land.lhs.true45.i.i.if.end67.sink.split.i.i_crit_edge, %if.end41.i.i.if.end67.sink.split.i.i_crit_edge, %land.lhs.true.i.i.if.end67.sink.split.i.i_crit_edge, %if.end.i.i.if.end67.sink.split.i.i_crit_edge
  %.sink145.i.i = phi i8 [ 127, %land.lhs.true.i.i.if.end67.sink.split.i.i_crit_edge ], [ 127, %if.end.i.i.if.end67.sink.split.i.i_crit_edge ], [ -33, %land.lhs.true45.i.i.if.end67.sink.split.i.i_crit_edge ], [ -33, %if.end41.i.i.if.end67.sink.split.i.i_crit_edge ], [ %.sink145.i.i.ph, %if.end67.sink.split.i.i.sink.split ]
  %52 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rcount.i, align 4
  %sub60.i.i = add i32 %53, -2
  store i32 %sub60.i.i, ptr %rcount.i, align 4
  %54 = ptrtoint ptr %rbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rbuff.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %58 = and i8 %57, %.sink145.i.i
  store i8 %58, ptr %55, align 1
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.end67.sink.split.i.i, %if.else.i.i.if.end67.i.i_crit_edge, %if.then6.i.if.end67.i.i_crit_edge
  %59 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rcount.i, align 4
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %60, i32 noundef 2592) #12
  %cmp70.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %cmp70.i.i, label %do.end75.i.i, label %if.end85.i.i

do.end75.i.i:                                     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %62) #15
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %rx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 36, i32 6
  br label %ax_bump.exit.i

if.end85.i.i:                                     ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %rbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rbuff.i.i, align 4
  %call.i138.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %60) #12
  %67 = call ptr @memcpy(ptr %call.i138.i.i, ptr %66, i32 %60)
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = getelementptr inbounds %struct.anon.51, ptr %call.i.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %70, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %72 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %74 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 21
  %76 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  %pkt_type.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15
  %77 = ptrtoint ptr %pkt_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i.i.i = load i16, ptr %pkt_type.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, 8191
  store i16 %bf.clear.i.i.i, ptr %pkt_type.i.i.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 15, i32 0, i32 18
  %78 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %protocol.i.i, align 8
  %call90.i.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i.i.i) #12
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %stats92.i.i = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 36
  %81 = ptrtoint ptr %stats92.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stats92.i.i, align 8
  %inc93.i.i = add i32 %82, 1
  store i32 %inc93.i.i, ptr %stats92.i.i, align 8
  %83 = load ptr, ptr %dev, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 36, i32 2
  br label %ax_bump.exit.i

ax_bump.exit.i:                                   ; preds = %if.end85.i.i, %do.end75.i.i, %if.then35.i.i, %if.then9.i.i
  %rx_bytes.sink148.i.i = phi ptr [ %rx_bytes.i.i, %if.end85.i.i ], [ %rx_dropped.i.i, %do.end75.i.i ], [ %rx_errors38.i.i, %if.then35.i.i ], [ %rx_errors.i.i, %if.then9.i.i ]
  %.sink147.i.i = phi i32 [ %60, %if.end85.i.i ], [ 1, %do.end75.i.i ], [ 1, %if.then35.i.i ], [ 1, %if.then9.i.i ]
  %84 = ptrtoint ptr %rx_bytes.sink148.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_bytes.sink148.i.i, align 8
  %add.i.i = add i32 %85, %.sink147.i.i
  store i32 %add.i.i, ptr %rx_bytes.sink148.i.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock.i.i) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %ax_bump.exit.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  %86 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %rcount.i, align 4
  br label %while.cond.backedge

sw.bb10.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #12
  br label %while.cond.backedge

sw.bb12.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  %spec.select.i = select i1 %tobool15.not.i, i8 -35, i8 -37
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  %spec.select59.i = select i1 %tobool21.not.i, i8 -36, i8 -64
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb12.i, %if.end14.sw.epilog.i_crit_edge
  %s.addr.0.i = phi i8 [ %17, %if.end14.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.bb12.i ], [ %spec.select59.i, %sw.bb18.i ]
  tail call void @_raw_spin_lock_bh(ptr noundef %buflock.i.i) #12
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags, align 4
  %89 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool26.not.i = icmp eq i32 %89, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %sw.epilog.i.if.end37.i_crit_edge

sw.epilog.i.if.end37.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then27.i:                                      ; preds = %sw.epilog.i
  %90 = ptrtoint ptr %rcount.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rcount.i, align 4
  %92 = ptrtoint ptr %buffsize.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buffsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp29.i = icmp slt i32 %91, %93
  br i1 %cmp29.i, label %if.then31.i, label %if.end34.i

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %rbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rbuff.i.i, align 4
  %inc.i = add nsw i32 %91, 1
  %96 = ptrtoint ptr %rcount.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %inc.i, ptr %rcount.i, align 4
  %arrayidx.i = getelementptr i8, ptr %95, i32 %91
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %s.addr.0.i, ptr %arrayidx.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock.i.i) #12
  br label %while.cond.backedge

if.end34.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 36, i32 11
  %100 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_over_errors.i, align 4
  %inc35.i = add i32 %101, 1
  store i32 %inc35.i, ptr %rx_over_errors.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #12
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i, %sw.epilog.i.if.end37.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock.i.i) #12
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end3.while.end_crit_edge
  %call.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i31, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i30 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i30, label %if.end5.i.i.i.i.mkiss_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end5.i.i.i.i.mkiss_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mkiss_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %mkiss_put.exit

if.then.i31:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  %dead.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %dead.i) #12
  br label %mkiss_put.exit

mkiss_put.exit:                                   ; preds = %if.then.i31, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mkiss_put.exit_crit_edge
  tail call void @tty_unthrottle(ptr noundef %tty) #12
  br label %cleanup

cleanup:                                          ; preds = %mkiss_put.exit, %mkiss_get.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mkiss_write_wakeup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #12
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %mkiss_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !138
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !139

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !136

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

mkiss_get.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #12
  %xleft = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #12
  %dev = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #12
  br label %out

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %xhead = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xhead, align 4
  %call4 = tail call i32 %13(ptr noundef %tty, ptr noundef %15, i32 noundef %5) #12
  %16 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xleft, align 4
  %sub = sub i32 %17, %call4
  store i32 %sub, ptr %xleft, align 4
  %18 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xhead, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %call4
  store ptr %add.ptr, ptr %xhead, align 4
  br label %out

out:                                              ; preds = %if.end2, %if.then1
  %call.i.i.i.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i22, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i21 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i21, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !136

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup

if.then.i22:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !137
  %dead.i = getelementptr inbounds %struct.mkiss, ptr %1, i32 0, i32 15
  tail call void @complete(ptr noundef %dead.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i22, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %mkiss_get.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 236, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 73, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %2 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %addr_len, align 1
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %tx_queue_len, align 16
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %5 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ax25_header_ops, ptr %header_ops, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ax_netdev_ops, ptr %netdev_ops, align 8
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %7 = call ptr @memcpy(ptr %broadcast, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ax25_defaddr, i32 noundef 7) #12
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4098, ptr %flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ax_open_dev(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
define internal i32 @ax_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %dev) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end6.if.end25_crit_edge, label %if.then8

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call9 = tail call i32 @dev_trans_start(ptr noundef %dev) #12
  %add.neg = add i32 %8, -2000
  %sub = sub i32 %add.neg, %call9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %do.end16

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end16:                                         ; preds = %if.then8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call20 = tail call i32 @tty_chars_in_buffer(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %lor.rhs, label %do.end16.lor.end_crit_edge

do.end16.lor.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %xleft = getelementptr i8, ptr %dev, i32 2372
  %11 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  %phi.sel = select i1 %tobool21.not, ptr @.str.21, ptr @.str.20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.end16.lor.end_crit_edge
  %13 = phi ptr [ @.str.20, %do.end16.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %dev, ptr noundef nonnull %13) #15
  %xleft23 = getelementptr i8, ptr %dev, i32 2372
  %14 = ptrtoint ptr %xleft23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %xleft23, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #12
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i42 = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i42) #12
  br label %if.end25

if.end25:                                         ; preds = %lor.end, %if.end6.if.end25_crit_edge
  %19 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i44 = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i44) #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %mtu.i = getelementptr i8, ptr %dev, i32 2376
  %25 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mtu.i, align 4
  %dev1.i = getelementptr i8, ptr %dev, i32 2308
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 4
  %mtu2.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %mtu2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu2.i, align 4
  %add.i = add i32 %30, 73
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add.i)
  %cmp.not.i = icmp eq i32 %26, %add.i
  br i1 %cmp.not.i, label %if.end25.if.end.i_crit_edge, label %if.then.i

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ax_changedmtu(ptr noundef %add.ptr.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end25.if.end.i_crit_edge
  %31 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %24)
  %cmp4.i = icmp slt i32 %32, %24
  br i1 %cmp4.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %34) #15
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %38, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  br label %ax_encaps.exit

if.end8.i:                                        ; preds = %if.end.i
  %buflock.i = getelementptr i8, ptr %dev, i32 2312
  tail call void @_raw_spin_lock_bh(ptr noundef %buflock.i) #12
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %22, align 1
  %41 = and i8 %40, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp9.not.i = icmp eq i8 %41, 0
  br i1 %cmp9.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %40)
  %cond94.i = icmp eq i8 %40, -123
  br i1 %cond94.i, label %sw.bb.i, label %sw.default36.i

sw.bb.i:                                          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp14.i = icmp sgt i32 %24, 1
  br i1 %cmp14.i, label %if.then16.i, label %sw.bb.i.if.end34.i_crit_edge

sw.bb.i.if.end34.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then16.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %22, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %switch.tableidx = add i8 %43, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %44 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast58 = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast58, 1
  %narrow = select i1 %44, i8 %switch.tableidx, i8 4
  %.sink.i = zext i8 %narrow to i32
  %not. = xor i1 %44, true
  %tobool.not.i = zext i1 %not. to i32
  %cmd.0.i = select i1 %44, i32 %switch.offset, i32 0
  %crcmode25.i = getelementptr i8, ptr %dev, i32 2392
  %45 = ptrtoint ptr %crcmode25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %crcmode25.i, align 4
  %crcauto.i = getelementptr i8, ptr %dev, i32 2396
  %46 = ptrtoint ptr %crcauto.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %tobool.not.i, ptr %crcauto.i, align 4
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 4
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %48, i32 noundef %cmd.0.i) #15
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then16.i, %sw.bb.i.if.end34.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock.i) #12
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i154.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i154.i) #12
  br label %ax_encaps.exit

sw.default36.i:                                   ; preds = %if.then11.i
  %xbuff.i = getelementptr i8, ptr %dev, i32 2364
  %51 = ptrtoint ptr %xbuff.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xbuff.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %52, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -64, ptr %52, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.i.i = icmp sgt i32 %24, 0
  br i1 %cmp18.i.i, label %sw.default36.i.while.body.i.i_crit_edge, label %sw.default36.i.if.end79.i_crit_edge

sw.default36.i.if.end79.i_crit_edge:              ; preds = %sw.default36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.default36.i.while.body.i.i_crit_edge:          ; preds = %sw.default36.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %sw.default36.i.while.body.i.i_crit_edge
  %dec21.in.i.i = phi i32 [ %dec21.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %24, %sw.default36.i.while.body.i.i_crit_edge ]
  %ptr.020.i.i = phi ptr [ %ptr.1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %incdec.ptr.i.i, %sw.default36.i.while.body.i.i_crit_edge ]
  %s.addr.019.i.i = phi ptr [ %incdec.ptr1.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %22, %sw.default36.i.while.body.i.i_crit_edge ]
  %dec21.i.i = add nsw i32 %dec21.in.i.i, -1
  %incdec.ptr1.i.i = getelementptr i8, ptr %s.addr.019.i.i, i32 1
  %54 = ptrtoint ptr %s.addr.019.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %s.addr.019.i.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %55, label %sw.default.i.i [
    i8 -64, label %sw.bb.i.i
    i8 -37, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr2.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %57 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -37, ptr %ptr.020.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 2
  %58 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -36, ptr %incdec.ptr2.i.i, align 1
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr5.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %59 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -37, ptr %ptr.020.i.i, align 1
  %incdec.ptr6.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 2
  %60 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -35, ptr %incdec.ptr5.i.i, align 1
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr7.i.i = getelementptr i8, ptr %ptr.020.i.i, i32 1
  %61 = ptrtoint ptr %ptr.020.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %55, ptr %ptr.020.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb.i.i
  %ptr.1.i.i = phi ptr [ %incdec.ptr7.i.i, %sw.default.i.i ], [ %incdec.ptr6.i.i, %sw.bb4.i.i ], [ %incdec.ptr3.i.i, %sw.bb.i.i ]
  %cmp.i.i = icmp ugt i32 %dec21.in.i.i, 1
  br i1 %cmp.i.i, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %sw.epilog.i.i.if.end79.i_crit_edge

sw.epilog.i.i.if.end79.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.else.i:                                        ; preds = %if.end8.i
  %crcmode39.i = getelementptr i8, ptr %dev, i32 2392
  %62 = ptrtoint ptr %crcmode39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crcmode39.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %63, label %sw.default75.i [
    i32 4, label %sw.bb40.i
    i32 2, label %if.else.i.sw.bb50.i_crit_edge
    i32 3, label %sw.bb57.i
    i32 1, label %if.else.i.sw.bb67.i_crit_edge
  ]

if.else.i.sw.bb67.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb67.i

if.else.i.sw.bb50.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb50.i

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %crcmode39.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %crcmode39.i, align 4
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %67) #15
  br label %sw.bb50.i

sw.bb50.i:                                        ; preds = %sw.bb40.i, %if.else.i.sw.bb50.i_crit_edge
  %68 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %22, align 1
  %70 = or i8 %69, -128
  store i8 %70, ptr %22, align 1
  %call53.i = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %22, i32 noundef %24) #12
  %71 = tail call i16 @llvm.bswap.i16(i16 %call53.i) #12
  %xbuff54.i = getelementptr i8, ptr %dev, i32 2364
  %72 = ptrtoint ptr %xbuff54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xbuff54.i, align 4
  %add55.i = add i32 %24, 2
  %incdec.ptr.i155.i = getelementptr i8, ptr %73, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -64, ptr %73, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add55.i)
  %cmp31.i.i = icmp sgt i32 %add55.i, 0
  br i1 %cmp31.i.i, label %while.body.lr.ph.i.i, label %sw.bb50.i.if.end79.i_crit_edge

sw.bb50.i.if.end79.i_crit_edge:                   ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

while.body.lr.ph.i.i:                             ; preds = %sw.bb50.i
  %75 = lshr i16 %71, 8
  br label %while.body.i156.i

while.body.i156.i:                                ; preds = %sw.epilog.i162.i.while.body.i156.i_crit_edge, %while.body.lr.ph.i.i
  %ptr.035.i.i = phi ptr [ %incdec.ptr.i155.i, %while.body.lr.ph.i.i ], [ %ptr.1.i160.i, %sw.epilog.i162.i.while.body.i156.i_crit_edge ]
  %len.addr.033.i.i = phi i32 [ %add55.i, %while.body.lr.ph.i.i ], [ %dec.i.i, %sw.epilog.i162.i.while.body.i156.i_crit_edge ]
  %s.addr.032.i.i = phi ptr [ %22, %while.body.lr.ph.i.i ], [ %s.addr.1.i.i, %sw.epilog.i162.i.while.body.i156.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.033.i.i)
  %cmp1.i.i = icmp ugt i32 %len.addr.033.i.i, 2
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i156.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr2.i157.i = getelementptr i8, ptr %s.addr.032.i.i, i32 1
  %76 = ptrtoint ptr %s.addr.032.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %s.addr.032.i.i, align 1
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %while.body.i156.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.033.i.i)
  %cmp3.i.i = icmp eq i32 %len.addr.033.i.i, 2
  %conv5.conv8.v.i.i = select i1 %cmp3.i.i, i16 %75, i16 %71
  %conv5.conv8.i.i = trunc i16 %conv5.conv8.v.i.i to i8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %s.addr.1.i.i = phi ptr [ %incdec.ptr2.i157.i, %if.then.i.i ], [ %s.addr.032.i.i, %if.else.i.i ]
  %c.0.i.i = phi i8 [ %77, %if.then.i.i ], [ %conv5.conv8.i.i, %if.else.i.i ]
  %dec.i.i = add nsw i32 %len.addr.033.i.i, -1
  %78 = zext i8 %c.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %c.0.i.i, label %sw.default.i159.i [
    i8 -64, label %sw.bb.i158.i
    i8 -37, label %sw.bb13.i.i
  ]

sw.bb.i158.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr11.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 1
  %79 = ptrtoint ptr %ptr.035.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -37, ptr %ptr.035.i.i, align 1
  %incdec.ptr12.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 2
  %80 = ptrtoint ptr %incdec.ptr11.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -36, ptr %incdec.ptr11.i.i, align 1
  br label %sw.epilog.i162.i

sw.bb13.i.i:                                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr14.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 1
  %81 = ptrtoint ptr %ptr.035.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -37, ptr %ptr.035.i.i, align 1
  %incdec.ptr15.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 2
  %82 = ptrtoint ptr %incdec.ptr14.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -35, ptr %incdec.ptr14.i.i, align 1
  br label %sw.epilog.i162.i

sw.default.i159.i:                                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr16.i.i = getelementptr i8, ptr %ptr.035.i.i, i32 1
  %83 = ptrtoint ptr %ptr.035.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %c.0.i.i, ptr %ptr.035.i.i, align 1
  br label %sw.epilog.i162.i

sw.epilog.i162.i:                                 ; preds = %sw.default.i159.i, %sw.bb13.i.i, %sw.bb.i158.i
  %ptr.1.i160.i = phi ptr [ %incdec.ptr16.i.i, %sw.default.i159.i ], [ %incdec.ptr15.i.i, %sw.bb13.i.i ], [ %incdec.ptr12.i.i, %sw.bb.i158.i ]
  %cmp.i161.i = icmp ugt i32 %len.addr.033.i.i, 1
  br i1 %cmp.i161.i, label %sw.epilog.i162.i.while.body.i156.i_crit_edge, label %sw.epilog.i162.i.if.end79.i_crit_edge

sw.epilog.i162.i.if.end79.i_crit_edge:            ; preds = %sw.epilog.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.epilog.i162.i.while.body.i156.i_crit_edge:     ; preds = %sw.epilog.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i156.i

sw.bb57.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %crcmode39.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %crcmode39.i, align 4
  %85 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1.i, align 4
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %86) #15
  br label %sw.bb67.i

sw.bb67.i:                                        ; preds = %sw.bb57.i, %if.else.i.sw.bb67.i_crit_edge
  %87 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %22, align 1
  %89 = or i8 %88, 32
  store i8 %89, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not8.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not8.i.i, label %calc_crc_flex.exit.thread.i, label %sw.bb67.i.while.body.i169.i_crit_edge

sw.bb67.i.while.body.i169.i_crit_edge:            ; preds = %sw.bb67.i
  br label %while.body.i169.i

calc_crc_flex.exit.thread.i:                      ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  %xbuff72232.i = getelementptr i8, ptr %dev, i32 2364
  %90 = ptrtoint ptr %xbuff72232.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xbuff72232.i, align 4
  %incdec.ptr.i170234.i = getelementptr i8, ptr %91, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -64, ptr %91, align 1
  br label %while.body.lr.ph.i172.i

while.body.i169.i:                                ; preds = %while.body.i169.i.while.body.i169.i_crit_edge, %sw.bb67.i.while.body.i169.i_crit_edge
  %crc.011.i.i = phi i16 [ %xor4.i.i, %while.body.i169.i.while.body.i169.i_crit_edge ], [ -1, %sw.bb67.i.while.body.i169.i_crit_edge ]
  %size.addr.010.i.i = phi i32 [ %dec.i167.i, %while.body.i169.i.while.body.i169.i_crit_edge ], [ %24, %sw.bb67.i.while.body.i169.i_crit_edge ]
  %cp.addr.09.i.i = phi ptr [ %incdec.ptr.i168.i, %while.body.i169.i.while.body.i169.i_crit_edge ], [ %22, %sw.bb67.i.while.body.i169.i_crit_edge ]
  %dec.i167.i = add i32 %size.addr.010.i.i, -1
  %shl.i.i = shl i16 %crc.011.i.i, 8
  %93 = lshr i16 %crc.011.i.i, 8
  %94 = zext i16 %93 to i32
  %incdec.ptr.i168.i = getelementptr i8, ptr %cp.addr.09.i.i, i32 1
  %95 = ptrtoint ptr %cp.addr.09.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cp.addr.09.i.i, align 1
  %conv2.i.i = zext i8 %96 to i32
  %xor.i.i = xor i32 %conv2.i.i, %94
  %arrayidx.i.i = getelementptr [256 x i16], ptr @crc_flex_table, i32 0, i32 %xor.i.i
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i.i, align 2
  %xor4.i.i = xor i16 %98, %shl.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i167.i, 0
  br i1 %tobool.not.i.i, label %calc_crc_flex.exit.i, label %while.body.i169.i.while.body.i169.i_crit_edge

while.body.i169.i.while.body.i169.i_crit_edge:    ; preds = %while.body.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i169.i

calc_crc_flex.exit.i:                             ; preds = %while.body.i169.i
  %xbuff72.i = getelementptr i8, ptr %dev, i32 2364
  %99 = ptrtoint ptr %xbuff72.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xbuff72.i, align 4
  %add73.i = add i32 %24, 2
  %incdec.ptr.i170.i = getelementptr i8, ptr %100, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -64, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add73.i)
  %cmp31.i171.i = icmp sgt i32 %add73.i, 0
  br i1 %cmp31.i171.i, label %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge, label %calc_crc_flex.exit.i.if.end79.i_crit_edge

calc_crc_flex.exit.i.if.end79.i_crit_edge:        ; preds = %calc_crc_flex.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge: ; preds = %calc_crc_flex.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i172.i

while.body.lr.ph.i172.i:                          ; preds = %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge, %calc_crc_flex.exit.thread.i
  %incdec.ptr.i170238.i = phi ptr [ %incdec.ptr.i170234.i, %calc_crc_flex.exit.thread.i ], [ %incdec.ptr.i170.i, %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge ]
  %add73237.i = phi i32 [ 2, %calc_crc_flex.exit.thread.i ], [ %add73.i, %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge ]
  %102 = phi ptr [ %91, %calc_crc_flex.exit.thread.i ], [ %100, %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge ]
  %crc.0.lcssa.i236.i = phi i16 [ -1, %calc_crc_flex.exit.thread.i ], [ %xor4.i.i, %calc_crc_flex.exit.i.while.body.lr.ph.i172.i_crit_edge ]
  %103 = lshr i16 %crc.0.lcssa.i236.i, 8
  br label %while.body.i177.i

while.body.i177.i:                                ; preds = %sw.epilog.i198.i.while.body.i177.i_crit_edge, %while.body.lr.ph.i172.i
  %ptr.035.i173.i = phi ptr [ %incdec.ptr.i170238.i, %while.body.lr.ph.i172.i ], [ %ptr.1.i196.i, %sw.epilog.i198.i.while.body.i177.i_crit_edge ]
  %len.addr.033.i174.i = phi i32 [ %add73237.i, %while.body.lr.ph.i172.i ], [ %dec.i186.i, %sw.epilog.i198.i.while.body.i177.i_crit_edge ]
  %s.addr.032.i175.i = phi ptr [ %22, %while.body.lr.ph.i172.i ], [ %s.addr.1.i184.i, %sw.epilog.i198.i.while.body.i177.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.033.i174.i)
  %cmp1.i176.i = icmp ugt i32 %len.addr.033.i174.i, 2
  br i1 %cmp1.i176.i, label %if.then.i179.i, label %if.else.i183.i

if.then.i179.i:                                   ; preds = %while.body.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr2.i178.i = getelementptr i8, ptr %s.addr.032.i175.i, i32 1
  %104 = ptrtoint ptr %s.addr.032.i175.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %s.addr.032.i175.i, align 1
  br label %if.end9.i187.i

if.else.i183.i:                                   ; preds = %while.body.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.033.i174.i)
  %cmp3.i180.i = icmp eq i32 %len.addr.033.i174.i, 2
  %conv5.conv8.v.i181.i = select i1 %cmp3.i180.i, i16 %103, i16 %crc.0.lcssa.i236.i
  %conv5.conv8.i182.i = trunc i16 %conv5.conv8.v.i181.i to i8
  br label %if.end9.i187.i

if.end9.i187.i:                                   ; preds = %if.else.i183.i, %if.then.i179.i
  %s.addr.1.i184.i = phi ptr [ %incdec.ptr2.i178.i, %if.then.i179.i ], [ %s.addr.032.i175.i, %if.else.i183.i ]
  %c.0.i185.i = phi i8 [ %105, %if.then.i179.i ], [ %conv5.conv8.i182.i, %if.else.i183.i ]
  %dec.i186.i = add nsw i32 %len.addr.033.i174.i, -1
  %106 = zext i8 %c.0.i185.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %c.0.i185.i, label %sw.default.i195.i [
    i8 -64, label %sw.bb.i190.i
    i8 -37, label %sw.bb13.i193.i
  ]

sw.bb.i190.i:                                     ; preds = %if.end9.i187.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr11.i188.i = getelementptr i8, ptr %ptr.035.i173.i, i32 1
  %107 = ptrtoint ptr %ptr.035.i173.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -37, ptr %ptr.035.i173.i, align 1
  %incdec.ptr12.i189.i = getelementptr i8, ptr %ptr.035.i173.i, i32 2
  %108 = ptrtoint ptr %incdec.ptr11.i188.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -36, ptr %incdec.ptr11.i188.i, align 1
  br label %sw.epilog.i198.i

sw.bb13.i193.i:                                   ; preds = %if.end9.i187.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr14.i191.i = getelementptr i8, ptr %ptr.035.i173.i, i32 1
  %109 = ptrtoint ptr %ptr.035.i173.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -37, ptr %ptr.035.i173.i, align 1
  %incdec.ptr15.i192.i = getelementptr i8, ptr %ptr.035.i173.i, i32 2
  %110 = ptrtoint ptr %incdec.ptr14.i191.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -35, ptr %incdec.ptr14.i191.i, align 1
  br label %sw.epilog.i198.i

sw.default.i195.i:                                ; preds = %if.end9.i187.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr16.i194.i = getelementptr i8, ptr %ptr.035.i173.i, i32 1
  %111 = ptrtoint ptr %ptr.035.i173.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %c.0.i185.i, ptr %ptr.035.i173.i, align 1
  br label %sw.epilog.i198.i

sw.epilog.i198.i:                                 ; preds = %sw.default.i195.i, %sw.bb13.i193.i, %sw.bb.i190.i
  %ptr.1.i196.i = phi ptr [ %incdec.ptr16.i194.i, %sw.default.i195.i ], [ %incdec.ptr15.i192.i, %sw.bb13.i193.i ], [ %incdec.ptr12.i189.i, %sw.bb.i190.i ]
  %cmp.i197.i = icmp ugt i32 %len.addr.033.i174.i, 1
  br i1 %cmp.i197.i, label %sw.epilog.i198.i.while.body.i177.i_crit_edge, label %sw.epilog.i198.i.if.end79.i_crit_edge

sw.epilog.i198.i.if.end79.i_crit_edge:            ; preds = %sw.epilog.i198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.epilog.i198.i.while.body.i177.i_crit_edge:     ; preds = %sw.epilog.i198.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i177.i

sw.default75.i:                                   ; preds = %if.else.i
  %xbuff76.i = getelementptr i8, ptr %dev, i32 2364
  %112 = ptrtoint ptr %xbuff76.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xbuff76.i, align 4
  %incdec.ptr.i205.i = getelementptr i8, ptr %113, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -64, ptr %113, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18.i206.i = icmp sgt i32 %24, 0
  br i1 %cmp18.i206.i, label %sw.default75.i.while.body.i212.i_crit_edge, label %sw.default75.i.if.end79.i_crit_edge

sw.default75.i.if.end79.i_crit_edge:              ; preds = %sw.default75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.default75.i.while.body.i212.i_crit_edge:       ; preds = %sw.default75.i
  br label %while.body.i212.i

while.body.i212.i:                                ; preds = %sw.epilog.i223.i.while.body.i212.i_crit_edge, %sw.default75.i.while.body.i212.i_crit_edge
  %dec21.in.i207.i = phi i32 [ %dec21.i210.i, %sw.epilog.i223.i.while.body.i212.i_crit_edge ], [ %24, %sw.default75.i.while.body.i212.i_crit_edge ]
  %ptr.020.i208.i = phi ptr [ %ptr.1.i221.i, %sw.epilog.i223.i.while.body.i212.i_crit_edge ], [ %incdec.ptr.i205.i, %sw.default75.i.while.body.i212.i_crit_edge ]
  %s.addr.019.i209.i = phi ptr [ %incdec.ptr1.i211.i, %sw.epilog.i223.i.while.body.i212.i_crit_edge ], [ %22, %sw.default75.i.while.body.i212.i_crit_edge ]
  %dec21.i210.i = add nsw i32 %dec21.in.i207.i, -1
  %incdec.ptr1.i211.i = getelementptr i8, ptr %s.addr.019.i209.i, i32 1
  %115 = ptrtoint ptr %s.addr.019.i209.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %s.addr.019.i209.i, align 1
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %116, label %sw.default.i220.i [
    i8 -64, label %sw.bb.i215.i
    i8 -37, label %sw.bb4.i218.i
  ]

sw.bb.i215.i:                                     ; preds = %while.body.i212.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr2.i213.i = getelementptr i8, ptr %ptr.020.i208.i, i32 1
  %118 = ptrtoint ptr %ptr.020.i208.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -37, ptr %ptr.020.i208.i, align 1
  %incdec.ptr3.i214.i = getelementptr i8, ptr %ptr.020.i208.i, i32 2
  %119 = ptrtoint ptr %incdec.ptr2.i213.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -36, ptr %incdec.ptr2.i213.i, align 1
  br label %sw.epilog.i223.i

sw.bb4.i218.i:                                    ; preds = %while.body.i212.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr5.i216.i = getelementptr i8, ptr %ptr.020.i208.i, i32 1
  %120 = ptrtoint ptr %ptr.020.i208.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -37, ptr %ptr.020.i208.i, align 1
  %incdec.ptr6.i217.i = getelementptr i8, ptr %ptr.020.i208.i, i32 2
  %121 = ptrtoint ptr %incdec.ptr5.i216.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -35, ptr %incdec.ptr5.i216.i, align 1
  br label %sw.epilog.i223.i

sw.default.i220.i:                                ; preds = %while.body.i212.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr7.i219.i = getelementptr i8, ptr %ptr.020.i208.i, i32 1
  %122 = ptrtoint ptr %ptr.020.i208.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %116, ptr %ptr.020.i208.i, align 1
  br label %sw.epilog.i223.i

sw.epilog.i223.i:                                 ; preds = %sw.default.i220.i, %sw.bb4.i218.i, %sw.bb.i215.i
  %ptr.1.i221.i = phi ptr [ %incdec.ptr7.i219.i, %sw.default.i220.i ], [ %incdec.ptr6.i217.i, %sw.bb4.i218.i ], [ %incdec.ptr3.i214.i, %sw.bb.i215.i ]
  %cmp.i222.i = icmp ugt i32 %dec21.in.i207.i, 1
  br i1 %cmp.i222.i, label %sw.epilog.i223.i.while.body.i212.i_crit_edge, label %sw.epilog.i223.i.if.end79.i_crit_edge

sw.epilog.i223.i.if.end79.i_crit_edge:            ; preds = %sw.epilog.i223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

sw.epilog.i223.i.while.body.i212.i_crit_edge:     ; preds = %sw.epilog.i223.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i212.i

if.end79.i:                                       ; preds = %sw.epilog.i223.i.if.end79.i_crit_edge, %sw.default75.i.if.end79.i_crit_edge, %sw.epilog.i198.i.if.end79.i_crit_edge, %calc_crc_flex.exit.i.if.end79.i_crit_edge, %sw.epilog.i162.i.if.end79.i_crit_edge, %sw.bb50.i.if.end79.i_crit_edge, %sw.epilog.i.i.if.end79.i_crit_edge, %sw.default36.i.if.end79.i_crit_edge
  %ptr.0.lcssa.i163.sink240.i = phi ptr [ %incdec.ptr.i.i, %sw.default36.i.if.end79.i_crit_edge ], [ %incdec.ptr.i155.i, %sw.bb50.i.if.end79.i_crit_edge ], [ %incdec.ptr.i170.i, %calc_crc_flex.exit.i.if.end79.i_crit_edge ], [ %incdec.ptr.i205.i, %sw.default75.i.if.end79.i_crit_edge ], [ %ptr.1.i221.i, %sw.epilog.i223.i.if.end79.i_crit_edge ], [ %ptr.1.i160.i, %sw.epilog.i162.i.if.end79.i_crit_edge ], [ %ptr.1.i196.i, %sw.epilog.i198.i.if.end79.i_crit_edge ], [ %ptr.1.i.i, %sw.epilog.i.i.if.end79.i_crit_edge ]
  %.sink239.i = phi ptr [ %52, %sw.default36.i.if.end79.i_crit_edge ], [ %73, %sw.bb50.i.if.end79.i_crit_edge ], [ %100, %calc_crc_flex.exit.i.if.end79.i_crit_edge ], [ %113, %sw.default75.i.if.end79.i_crit_edge ], [ %113, %sw.epilog.i223.i.if.end79.i_crit_edge ], [ %73, %sw.epilog.i162.i.if.end79.i_crit_edge ], [ %102, %sw.epilog.i198.i.if.end79.i_crit_edge ], [ %52, %sw.epilog.i.i.if.end79.i_crit_edge ]
  %incdec.ptr17.i.i = getelementptr i8, ptr %ptr.0.lcssa.i163.sink240.i, i32 1
  %123 = ptrtoint ptr %ptr.0.lcssa.i163.sink240.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -64, ptr %ptr.0.lcssa.i163.sink240.i, align 1
  %sub.ptr.lhs.cast.i164.i = ptrtoint ptr %incdec.ptr17.i.i to i32
  %sub.ptr.rhs.cast.i165.i = ptrtoint ptr %.sink239.i to i32
  %sub.ptr.sub.i166.i = sub i32 %sub.ptr.lhs.cast.i164.i, %sub.ptr.rhs.cast.i165.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock.i) #12
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %125, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #12
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write.i, align 4
  %xbuff83.i = getelementptr i8, ptr %dev, i32 2364
  %132 = ptrtoint ptr %xbuff83.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %xbuff83.i, align 4
  %call84.i = tail call i32 %131(ptr noundef %127, ptr noundef %133, i32 noundef %sub.ptr.sub.i166.i) #12
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %134 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_packets.i, align 4
  %inc86.i = add i32 %135, 1
  store i32 %inc86.i, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %136 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tx_bytes.i, align 4
  %add88.i = add i32 %137, %call84.i
  store i32 %add88.i, ptr %tx_bytes.i, align 4
  %138 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev1.i, align 4
  %_tx.i.i230.i = getelementptr inbounds %struct.net_device, ptr %139, i32 0, i32 103
  %140 = ptrtoint ptr %_tx.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %_tx.i.i230.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %142 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %141, i32 0, i32 12
  %143 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %142)
  %cmp.not.i.i.i = icmp eq i32 %144, %142
  br i1 %cmp.not.i.i.i, label %if.end79.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

if.end79.i.netif_trans_update.exit.i_crit_edge:   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 %142, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %if.end79.i.netif_trans_update.exit.i_crit_edge
  %sub.i = sub i32 %sub.ptr.sub.i166.i, %call84.i
  %xleft.i = getelementptr i8, ptr %dev, i32 2372
  %146 = ptrtoint ptr %xleft.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub.i, ptr %xleft.i, align 4
  %147 = ptrtoint ptr %xbuff83.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xbuff83.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %148, i32 %call84.i
  %xhead.i = getelementptr i8, ptr %dev, i32 2368
  %149 = ptrtoint ptr %xhead.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i45, ptr %xhead.i, align 4
  br label %ax_encaps.exit

ax_encaps.exit:                                   ; preds = %netif_trans_update.exit.i, %if.end34.i, %do.end.i
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %ax_encaps.exit, %if.then8.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %ax_encaps.exit ], [ 16, %do.end ], [ 16, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #12
  tail call void @netif_tx_lock(ptr noundef %dev) #12
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 73
  %0 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nested_level.i, align 1
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63
  %conv.i = zext i8 %1 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #12
  %sax25_call = getelementptr inbounds %struct.sockaddr_ax25, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sax25_call, i32 noundef 7) #12
  tail call void @_raw_spin_unlock(ptr noundef %addr_list_lock.i) #12
  tail call void @netif_tx_unlock(ptr noundef %dev) #12
  tail call fastcc void @local_bh_enable() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax_changedmtu(ptr noundef %ax) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  %mul = shl i32 %3, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %mul, i32 1152)
  %add = add nuw i32 %4, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %call9.i111 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #16
  %cmp4 = icmp eq ptr %call9.i, null
  %cmp5 = icmp eq ptr %call9.i111, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %do.end, label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %6) #15
  %mtu9 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 8
  %7 = ptrtoint ptr %mtu9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu9, align 4
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mtu, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  %buflock = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %buflock) #12
  %xbuff12 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 5
  %10 = ptrtoint ptr %xbuff12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xbuff12, align 4
  store ptr %call9.i, ptr %xbuff12, align 4
  %rbuff14 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 3
  %12 = ptrtoint ptr %rbuff14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rbuff14, align 4
  store ptr %call9.i111, ptr %rbuff14, align 4
  %xleft = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 7
  %14 = ptrtoint ptr %xleft to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xleft, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end11.if.end24_crit_edge, label %if.then16

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %4)
  %cmp18.not = icmp sgt i32 %15, %4
  br i1 %cmp18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %xhead = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 6
  %16 = ptrtoint ptr %xhead to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xhead, align 4
  %18 = call ptr @memcpy(ptr %call9.i, ptr %17, i32 %15)
  br label %if.end24

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %xleft to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %xleft, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19, %if.end11.if.end24_crit_edge
  %22 = ptrtoint ptr %xbuff12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xbuff12, align 4
  %xhead26 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 6
  %24 = ptrtoint ptr %xhead26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %xhead26, align 4
  %rcount = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 4
  %25 = ptrtoint ptr %rcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not = icmp eq i32 %26, 0
  br i1 %tobool27.not, label %if.end24.if.end39_crit_edge, label %if.then28

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %4)
  %cmp30.not = icmp sgt i32 %26, %4
  br i1 %cmp30.not, label %if.else34, label %if.then31

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %rbuff14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rbuff14, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %13, i32 %26)
  br label %if.end39

if.else34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %rcount to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %rcount, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %31 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_over_errors, align 4
  %inc37 = add i32 %32, 1
  store i32 %inc37, ptr %rx_over_errors, align 4
  %flags = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #12
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.then31, %if.end24.if.end39_crit_edge
  %33 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mtu, align 4
  %add41 = add i32 %34, 73
  %mtu42 = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 8
  %35 = ptrtoint ptr %mtu42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add41, ptr %mtu42, align 4
  %buffsize = getelementptr inbounds %struct.mkiss, ptr %ax, i32 0, i32 9
  %36 = ptrtoint ptr %buffsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %4, ptr %buffsize, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %buflock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end
  %.sink121 = phi ptr [ %11, %if.end39 ], [ %call9.i, %do.end ]
  %.sink = phi ptr [ %13, %if.end39 ], [ %call9.i111, %do.end ]
  tail call void @kfree(ptr noundef %.sink121) #12
  tail call void @kfree(ptr noundef %.sink) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
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
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !87, !89, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !120, !122}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/mkiss.c", i32 972, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/net/hamradio/mkiss.c", i32 973, i32 1}
!4 = !{ptr @__param_crc_force, !5, !"__param_crc_force", i1 false, i1 false}
!5 = !{!"../drivers/net/hamradio/mkiss.c", i32 974, i32 1}
!6 = !{ptr @__UNIQUE_ID_crc_forcetype461, !5, !"__UNIQUE_ID_crc_forcetype461", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_crc_force462, !8, !"__UNIQUE_ID_crc_force462", i1 false, i1 false}
!8 = !{!"../drivers/net/hamradio/mkiss.c", i32 975, i32 1}
!9 = !{ptr @__UNIQUE_ID_file463, !10, !"__UNIQUE_ID_file463", i1 false, i1 false}
!10 = !{!"../drivers/net/hamradio/mkiss.c", i32 976, i32 1}
!11 = !{ptr @__UNIQUE_ID_license464, !10, !"__UNIQUE_ID_license464", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias465, !13, !"__UNIQUE_ID_alias465", i1 false, i1 false}
!13 = !{!"../drivers/net/hamradio/mkiss.c", i32 977, i32 1}
!14 = !{ptr @__initcall__kmod_mkiss__466_979_mkiss_init_driver6, !15, !"__initcall__kmod_mkiss__466_979_mkiss_init_driver6", i1 false, i1 false}
!15 = !{!"../drivers/net/hamradio/mkiss.c", i32 979, i32 1}
!16 = !{ptr @__exitcall_mkiss_exit_driver, !17, !"__exitcall_mkiss_exit_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/hamradio/mkiss.c", i32 980, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/hamradio/mkiss.c", i32 941, i32 11}
!20 = !{ptr @ax_ldisc, !21, !"ax_ldisc", i1 false, i1 false}
!21 = !{!"../drivers/net/hamradio/mkiss.c", i32 938, i32 29}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/hamradio/mkiss.c", i32 699, i32 8}
!24 = !{ptr @mkiss_open.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/hamradio/mkiss.c", i32 709, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/hamradio/mkiss.c", i32 735, i32 3}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mkiss_open._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @mkiss_open._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/hamradio/mkiss.c", i32 740, i32 3}
!35 = !{ptr @mkiss_open._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mkiss_open._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/hamradio/mkiss.c", i32 745, i32 3}
!39 = !{ptr @mkiss_open._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mkiss_open._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/hamradio/mkiss.c", i32 751, i32 3}
!43 = !{ptr @mkiss_open._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mkiss_open._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ax_netdev_ops, !46, !"ax_netdev_ops", i1 false, i1 false}
!46 = !{!"../drivers/net/hamradio/mkiss.c", i32 632, i32 36}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/hamradio/mkiss.c", i32 528, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ax_xmit._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ax_xmit._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/hamradio/mkiss.c", i32 542, i32 3}
!54 = !{ptr @ax_xmit._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ax_xmit._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/hamradio/mkiss.c", i32 435, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ax_encaps._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ax_encaps._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/hamradio/mkiss.c", i32 471, i32 5}
!65 = !{ptr @ax_encaps._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ax_encaps._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/hamradio/mkiss.c", i32 486, i32 4}
!69 = !{ptr @ax_encaps._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ax_encaps._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/hamradio/mkiss.c", i32 495, i32 4}
!73 = !{ptr @ax_encaps._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ax_encaps._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/hamradio/mkiss.c", i32 378, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ax_changedmtu._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ax_changedmtu._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @crc_flex_table, !81, !"crc_flex_table", i1 false, i1 false}
!81 = !{!"../drivers/net/hamradio/mkiss.c", i32 82, i32 29}
!82 = !{ptr @init_completion.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/completion.h", i32 87, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ax_open.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/hamradio/mkiss.c", i32 607, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/hamradio/mkiss.c", i32 665, i32 8}
!89 = !{ptr @disc_data_lock, !88, !"disc_data_lock", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/hamradio/mkiss.c", i32 252, i32 5}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ax_bump._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ax_bump._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/hamradio/mkiss.c", i32 266, i32 5}
!104 = !{ptr @ax_bump._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ax_bump._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/hamradio/mkiss.c", i32 286, i32 3}
!108 = !{ptr @ax_bump._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @ax_bump._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @__param_str_crc_force, !5, !"__param_str_crc_force", i1 false, i1 false}
!111 = !{ptr @crc_force, !112, !"crc_force", i1 false, i1 false}
!112 = !{!"../drivers/net/hamradio/mkiss.c", i32 686, i32 12}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/hamradio/mkiss.c", i32 958, i32 2}
!115 = !{ptr @mkiss_init_driver._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mkiss_init_driver._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mkiss_init_driver._entry.49, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/net/hamradio/mkiss.c", i32 962, i32 3}
!119 = !{ptr @mkiss_init_driver._entry_ptr.50, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @banner, !121, !"banner", i1 false, i1 false}
!121 = !{!"../drivers/net/hamradio/mkiss.c", i32 949, i32 19}
!122 = !{ptr @msg_regfail, !123, !"msg_regfail", i1 false, i1 false}
!123 = !{!"../drivers/net/hamradio/mkiss.c", i32 951, i32 19}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148450852}
!135 = !{i64 2148365292, i64 2148365324, i64 2148365353, i64 2148365387, i64 2148365418, i64 2148365441}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2149326966}
!138 = !{i64 2148362827, i64 2148362859, i64 2148362888, i64 2148362922, i64 2148362953, i64 2148362976}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2152079683, i64 2152079708}
!141 = !{i64 4574557}
!142 = !{i64 4574754}
!143 = !{i64 2152059987}
!144 = !{i64 2157162988, i64 2157163268, i64 2157163602, i64 2157163936}
!145 = !{i64 2157174531, i64 2157174811, i64 2157175145, i64 2157175479}
!146 = !{i64 2152079002, i64 2152079027}
